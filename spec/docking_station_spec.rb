require 'docking_station'

describe DockingStation do

  subject(:docking_station) {described_class.new}
  let(:bike) {double :bike}

  describe '#release_bike' do

    it {is_expected.to respond_to :release_bike }

    it 'releases a working bike' do
      bike = subject.release_bike
      expect(bike).to be_working
    end

  end

  describe '#dock' do

    it {is_expected.to respond_to(:dock).with(1).argument}

    it 'docks bikes' do
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end

  end


end
