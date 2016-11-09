require 'docking_station.rb'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it "shows if bike is working" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  it 'tests for repsonse to "return_bike" method' do
    expect(subject).to respond_to :return_bike
  end
  it 'test for the bike_available method' do
    expect(subject).to respond_to :bike_available?
  end
end
