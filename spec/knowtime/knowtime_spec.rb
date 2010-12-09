require 'spec_helper'

module KnowTime
  describe KnowTime do
    describe "#start" do
      it "sends a welcome message" do
        output = double('output').as_null_object
        know_time = KnowTime.new(output)

        output.should_receive(:puts).with('Welcome to Know Time!')

        know_time.start
      end

      it "prompts to start recording" do
        output = double('output').as_null_object
        know_time = KnowTime.new(output)

        output.should_receive(:puts).with('Start recording? (y/n)')

        know_time.start
      end
    end
  end
end
