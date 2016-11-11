require "./lib/van.rb"
require "./lib/docking_station.rb"
require "pry"

describe Van do

    it { is_expected.to respond_to(:load_bikes).with(1).argument }
    it { is_expected.to respond_to(:bikes)}

    describe '#load_bikes' do

      it 'expects the van to load the broken bikes from the dock' do
        station = DockingStation.new
        station.dock(Bike.new)
        subject.load_bikes(station)
        expect(subject.bikes).to eq station.bikes
      end

    end
end
