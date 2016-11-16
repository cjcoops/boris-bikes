require_relative 'bike'

DEFAULT_CAPACITY = 20

class DockingStation

  attr_reader :bikes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "No bikes available" if empty?
    bikes.pop
  end

  def dock(bike)
    fail "Station is full" if full?
    self.bikes << bike
  end

  private

  def empty?
    bikes.empty?
  end

  def full?
    bikes.count >= capacity
  end


end
