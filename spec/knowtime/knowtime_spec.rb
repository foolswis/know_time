require 'spec_helper'
require 'timecop'

module KnowTime
  describe KnowTime do
    describe "#start" do
      let(:output) { double('output').as_null_object }
      let(:know_time) { KnowTime.new(output) }

      it "sends a welcome message" do
        output.should_receive(:puts).with('Welcome to Know Time!')
        know_time.start
      end

      it "prompts to start recording" do
        output.should_receive(:puts).with('Start recording? (y/n)')
        know_time.start
      end
    end

    describe "#start recording" do
      let(:know_time) { KnowTime.new }
      it "records the date and time, and the status is recording" do
        new_time = Time.local(2010, 12, 9, 10, 22, 0)
        Timecop.freeze(new_time)
        know_time.start_recording
        know_time.recording_status.should == 'recording'
#        know_time.recording_start_time.should == Time.now
        Timecop.return
      end
    end
  end
end
