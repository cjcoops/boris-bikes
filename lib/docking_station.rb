require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No Bikes!" if empty?
    Bike.new
  end

  def dock(bike)
    raise "Docking station is full" if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count == 20
  end

  def empty?
    @bikes.count == 0
  end

end
