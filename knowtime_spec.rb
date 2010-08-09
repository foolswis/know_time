require "kt_timer"
describe "KTTimer" do
   it "should start with a time of 0" do
      timer = KTTimer.new
      timer.minutes.should == 0
   end
   it "should return the time elapsed when stopped"
end 
