require "./lib/van.rb"
require "./lib/docking_station.rb"
require "pry"

describe Van do

    describe '#dock' do

      it 'expects the van to load a bike from the docking station' do
        station = DockingStation.new
        station.dock(Bike.new)
        bike = station.release_bike
        expect(subject.dock(bike)).to eq bike
      end
    end

    describe '#release_bike' do

      it 'expects the van to be able to release a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
      end

    end

end
