require_relative 'bike'

DEFAULT_CAPACITY = 20

class DockingStation

  attr_reader :bikes, :capacity


  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise "No Bikes Available!" if empty?
    released_bike = nil
    @bikes.each do |bike|
        if bike.working
          released_bike = bike
          # break
        end
    end

    raise "No Bikes Available!" if released_bike == nil

    @bikes.delete(released_bike)

  end

  def dock(bike)
    raise "Docking station is full" if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count == @capacity
  end

  def empty?
    @bikes.count == 0
  end

end
