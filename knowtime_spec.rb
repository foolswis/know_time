require "kt_stopwatch"
describe "KTStopWatch" do
   it "should start with 0 minutes time elapsed" do
      sw = KTStopWatch.new
      sw.get_time_elapsed.should == 0
   end
   it "should record minutes when started"
   it "should return the time in minutes elapsed when minutes called"
end 
