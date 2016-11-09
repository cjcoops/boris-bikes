require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it "shows if bike is working" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  it 'tests for repsonse to "return_bike" method' do
    expect(subject).to respond_to :dock_bike
  end
  it 'tests if bike is available?' do
    bike_ready = subject.release_bike
    expect(bike_ready).to respond_to :bike_available?
  end
  it 'tests if bike is docked' do
    expect(subject).to respond_to(:dock_bike).with(1).argument
  end
  it 'tests for respsonse calling station.bike' do
    expect(subject).to respond_to :bike
  end
  it 'tests for bike dock_bike(bike) and station(class) method "bike" to return bike instance variable' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
    expect(subject.bike).to eq bike
  end
end
