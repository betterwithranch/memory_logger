require 'spec_helper'

describe MemoryLogger::Logger do
  describe '#debug' do
    it 'should log a debug message' do
      subject.debug("Debug message")
      expect(subject.logged_output).to match(/Debug message/)
    end
  end
end
