require "memory_logger/version"
require "logger"
require "stringio"

module MemoryLogger
  class Logger

    attr_accessor :logger

    def method_missing(sym, *args, &block)
      logger.send(sym, *args, &block)
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
