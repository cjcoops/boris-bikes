require 'docking_station'

describe DockingStation do

  subject {DockingStation.new}
  let(:bike) {double :bike}

  describe '#initialize' do

    it 'has variable capacity' do
      subject.capacity.times {subject.dock(bike)}
      expect{subject.dock(bike)}.to raise_error "Station is full"
    end

  end

  describe '#release_bike' do

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error if there are no bikes' do
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end

  end

  describe '#dock' do

    it 'docks bikes' do
      subject.dock(bike)
      expect(subject.bikes).to include bike
    end

    it 'raises an error if station is full' do
      subject.capacity.times {subject.dock(bike)}
      expect {subject.dock(bike)}.to raise_error 'Station is full'
    end

  end


end
