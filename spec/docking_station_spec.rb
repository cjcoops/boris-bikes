require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }


  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when no bike is available' do
      @bike == nil
      expect {subject.release_bike}.to raise_error("Docking station is empty")
    end
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end


end
