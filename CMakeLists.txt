cmake_minimum_required(VERSION 3.16)
project(chalchiu LANGUAGES CXX VERSION 3.3.0)

# --------------------------------------------------------------------------------------------------------
# Setup Cross-Compilation on Linux
# --------------------------------------------------------------------------------------------------------

if(NOT "${CMAKE_SYSTEM_NAME}" STREQUAL "Windows")
    message(FATAL_ERROR "[${PROJECT_NAME}] Make sure to instruct cmake to use the toolchain file!")
endif()

# --------------------------------------------------------------------------------------------------------
# Create library
# --------------------------------------------------------------------------------------------------------

file(GLOB src "src/*.cpp")
file(GLOB exports "export/*")

add_library(${PROJECT_NAME} SHARED ${src} ${exports})

set_target_properties(${PROJECT_NAME} PROPERTIES PREFIX "")
set_target_properties(${PROJECT_NAME} PROPERTIES OUTPUT_NAME "iphlpapi")

target_compile_features(${PROJECT_NAME} PRIVATE cxx_std_20)
set_target_properties(${PROJECT_NAME} PROPERTIES CXX_STANDARD 20 CXX_EXTENSIONS OFF CXX_STANDARD_REQUIRED ON)

if (MINGW)
    target_link_libraries(${PROJECT_NAME} PRIVATE "-Wl,--enable-stdcall-fixup" -static -static-libgcc -static-libstdc++)
endif()

if (NOT MSVC AND NOT IS_CI)
    target_compile_options(${PROJECT_NAME} PRIVATE -Wall -Wextra -Wpedantic -Werror -pedantic -pedantic-errors -Wfatal-errors)
    target_compile_options(${PROJECT_NAME} PRIVATE -Wno-cast-function-type -Wno-missing-field-initializers)
endif()

# --------------------------------------------------------------------------------------------------------
# Generate "constants" file
# --------------------------------------------------------------------------------------------------------

configure_file("constants.hpp.in" "${CMAKE_CURRENT_SOURCE_DIR}/private/constants.hpp")

# Embed the Lua part of the runtime (src/runtime.lua) as a string
file(READ "src/runtime.lua" CHALCHIU_RUNTIME_LUA)
configure_file("runtime_lua.hpp.in" "${CMAKE_CURRENT_SOURCE_DIR}/private/runtime_lua.hpp" @ONLY)
set_property(DIRECTORY APPEND PROPERTY CMAKE_CONFIGURE_DEPENDS "src/runtime.lua")

# --------------------------------------------------------------------------------------------------------
# Include directories
# --------------------------------------------------------------------------------------------------------

target_include_directories(${PROJECT_NAME} PUBLIC  "include")
target_include_directories(${PROJECT_NAME} PRIVATE "include/chalchiu" "private")

# --------------------------------------------------------------------------------------------------------
# Link Dependencies and Add Sources
# --------------------------------------------------------------------------------------------------------

include("cmake/cpm.cmake")

# --------------------------------------------------------------------------------------------------------
# Lua: link against the game's own lua.dll
# --------------------------------------------------------------------------------------------------------
# Solar2D ships a modified Lua 5.1 whose internal structs differ from stock Lua (since late 2023).
# Linking a stock Lua statically would make chalchiu operate on the game's lua_State with the wrong
# layout and crash. Instead we generate an import library from the exports of the game's lua.dll,
# so every Lua call goes through the exact same Lua the game uses.

find_program(CHALCHIU_DLLTOOL NAMES ${CHALCHIU_TOOLCHAIN_PREFIX}dlltool llvm-dlltool dlltool REQUIRED)

set(lua_def    "${CMAKE_CURRENT_SOURCE_DIR}/third_party/lua/lua.def")
set(lua_implib "${CMAKE_CURRENT_BINARY_DIR}/liblua.dll.a")

add_custom_command(
    OUTPUT  ${lua_implib}
    COMMAND ${CHALCHIU_DLLTOOL} -m i386 -d ${lua_def} -l ${lua_implib}
    DEPENDS ${lua_def}
    COMMENT "Generating import library for the game's lua.dll"
)

add_custom_target(lua_implib DEPENDS ${lua_implib})
add_dependencies(${PROJECT_NAME} lua_implib)

set(LUA_INCLUDE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/third_party/lua/include")
set(LUA_LIBRARIES   ${lua_implib})

CPMAddPackage("gh:ThePhD/sol2@3.5.0")
CPMAddPackage("gh:curve/lime#0a5f62f")
CPMAddPackage("gh:gabime/spdlog@1.11.0")

target_include_directories(${PROJECT_NAME} PRIVATE ${LUA_INCLUDE_DIR})
target_link_libraries(${PROJECT_NAME} PUBLIC sol2 spdlog lime ${LUA_LIBRARIES})