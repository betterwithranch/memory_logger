require "memory_logger/version"
require "logger"
require "stringio"

module MemoryLogger
  class Logger

    attr_accessor :logger

    %w{ debug info warn error fatal }.each do |level|
      define_method(level) do |*args|
        logger.send(level, args)
      end
    end

    def initialize
      @io = StringIO.new
      @logger = ::Logger.new(@io)
    end

    def logged_output
      @io.string
    end

    def messages
      logged_output.split("\n")
    end
  end
end
