require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    bike_available?
    Bike.new
  end

  def dock_bike(bike)
    raise "Docking station is full" if @bikes.count == 1
    @bikes << bike
  end

  def bike_available?
    raise "No Bikes!" if @bikes.count == 0
  end

end
