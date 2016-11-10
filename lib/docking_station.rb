require_relative 'bike'

DEFAULT_CAPACITY = 20

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
    @bikes.count == DEFAULT_CAPACITY
  end

  def empty?
    @bikes.count == 0
  end

end
