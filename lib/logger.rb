require 'logger'

module LoyaltyProgram
  class Logger
    class << self
      DOCKER_STDOUT_PATH = '/proc/self/fd/1'

      def log(level = 'info', message)
        logger.send(level, message)
      end

      private

      def logger
        log_output = ENV['DOCKER_LOGS'] ? DOCKER_STDOUT_PATH : $stdout

        @logger ||= ::Logger.new(log_output)
      end
    end
  end
end
