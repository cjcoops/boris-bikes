require 'docking_station'
describe DockingStation do
 it { should respond_to :release_bike }    
 it "should release a working bike" do
   bike = subject.release_bike
   expect(bike).to be_working
 end
end
