require 'docking_station.rb'
require 'bike.rb'
require "pry"

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it "shows if bike is working" do
    bike = Bike.new
    subject.dock(bike)
    released_bike = subject.release_bike
    expect(released_bike).to be_working
  end
  it 'tests for repsonse to "return_bike" method' do
    expect(subject).to respond_to :dock
  end

  it 'tests if bike is docked' do
    expect(subject).to respond_to(:dock).with(1).argument
  end
  it 'tests for respsonse calling station.bike' do
    expect(subject).to respond_to :bikes
  end

end

describe 'Exercise 12 "raising errors"' do
  subject{station = DockingStation.new}
  it 'test for the raising of an error if no bikes are available' do
    expect{subject.release_bike}.to raise_error("No Bikes Available!")
  end
  it 'tests for not raising an error if bikes are available' do
    bike = Bike.new
    subject.dock(bike)
    expect{subject.release_bike}.to_not raise_error
  end
  it 'tests if release bike method raises an error if no bikes are available' do
    expect{subject.release_bike}.to raise_error("No Bikes Available!")
  end
end

describe "Exercise 13 - raise error if station is full" do
  subject {station = DockingStation.new}
  it "raises an error when trying to dock a bike if the station is full" do
    DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
    expect {subject.dock(Bike.new)}.to raise_error("Docking station is full")
  end
end

describe "Exercise 14 - complex attributes" do
  subject {station = DockingStation.new}
  it 'tests if you can dock bikes to its capacity?' do
    DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
    expect(subject.bikes.count).to eq DEFAULT_CAPACITY
  end
end

describe "Exercise 17 - initialization defaults" do

  subject {station = DockingStation.new}

  it "checks for a @capacity instance variable" do
    expect(subject).to respond_to :capacity
  end

  it "should receive a default capacity of 20" do
    expect(subject.capacity).to eq DEFAULT_CAPACITY
  end
end

describe "tests cumstom capacitties for docking station" do
  subject { station =  DockingStation.new(5)}
    it "should receive a custom capacity value as an argument" do
    expect(subject.capacity).to eq 5
  end
end

describe "Exercise 18" do
  subject { station = DockingStation.new }

  it "tests if a broken bike can be docked" do
    subject.dock(Bike.new(false))
    expect(subject.bikes.count).to eq 1
  end

  it "tests the dock will not release a broken bike" do
    subject.dock(Bike.new(false))
    expect{subject.release_bike}.to raise_error("No Bikes Available!")
  end
end
