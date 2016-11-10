require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it "shows if bike is working" do
    bike = Bike.new
    subject.dock_bike(bike)
    released_bike = subject.release_bike
    expect(released_bike).to be_working
  end
  it 'tests for repsonse to "return_bike" method' do
    expect(subject).to respond_to :dock_bike
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

describe 'Exercise 12 "raising errors"' do
  subject{station = DockingStation.new}
  it 'test for the raising of an error if no bikes are available' do
    expect{subject.bike_available?}.to raise_error("No Bikes!")
  end
  it 'tests for not raising an error if bikes are available' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect{subject.release_bike}.to_not raise_error
  end
  it 'tests if release bike method raises an error if no bikes are available' do
    expect{subject.release_bike}.to raise_error("No Bikes!")
  end
end
