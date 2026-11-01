#pragma once
#include <memory>
#include <spdlog/logger.h>

namespace chalchiu
{
    class logger
    {
        static logger *m_instance; //? never destroyed, so logging keeps working during shutdown

      private:
        std::unique_ptr<spdlog::logger> m_logger;

      private:
        logger();

      public:
        spdlog::logger *operator->();

      public:
        static logger &get();
    };
} // namespace chalchiu