require 'logger'

module LoyaltyProgram
  class SimpleLogger
    class FakeLogger
      class << self
        def method_missing(_method, _arguments)
          # does nothing with logging message
          nil
        end
      end
    end

    class << self
      DOCKER_STDOUT_PATH = '/proc/self/fd/1'

      def log(message, level = 'info')
        logger.send(level, message)
      end

      private

      def logger
        return FakeLogger if ENV['RUBY_ENV'] == 'test'

        log_output = ENV['DOCKER_LOGS'] ? DOCKER_STDOUT_PATH : $stdout

        @logger ||= ::Logger.new(log_output)
      end
    end
  end
end
