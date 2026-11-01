#include "logger.hpp"

#include <spdlog/sinks/basic_file_sink.h>
#include <spdlog/sinks/stdout_color_sinks.h>

#include <filesystem>
#include <system_error>

namespace chalchiu
{
    logger *logger::m_instance = nullptr;

    logger::logger()
    {
        auto console_sink = std::make_shared<spdlog::sinks::stdout_color_sink_mt>();
        //? Each game start gets a fresh chalchiu.log, the previous one is kept as chalchiu.previous.log.
        //? Keeps the file small (every line is flushed right away) and makes bug reports about one session.
        std::error_code ec;
        if (std::filesystem::exists("chalchiu.log", ec))
        {
            std::filesystem::remove("chalchiu.previous.log", ec);
            std::filesystem::rename("chalchiu.log", "chalchiu.previous.log", ec);
        }

        auto file_sink = std::make_shared<spdlog::sinks::basic_file_sink_mt>("chalchiu.log", true);

        spdlog::sinks_init_list sink_list{console_sink, file_sink};
        m_logger = std::make_unique<spdlog::logger>("chalchiu", sink_list);

        m_logger->flush_on(spdlog::level::trace);
        m_logger->set_level(spdlog::level::trace);
    }

    spdlog::logger *logger::operator->()
    {
        return m_logger.get();
    }

    logger &logger::get()
    {
        if (!m_instance)
        {
            m_instance = new logger;
        }

        return *m_instance;
    }
} // namespace chalchiu