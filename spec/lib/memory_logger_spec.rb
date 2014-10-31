require 'spec_helper'

describe MemoryLogger::Logger do
  describe '#debug' do

    %w{ debug info warn error fatal }.each do |level|
      it "should log a debug message" do
        message =  "#{level.capitalize} message"
        subject.send(level.to_sym, message)
        expect(subject.logged_output).to match(/#{level.capitalize} message/)
      end
    end
  end
end
