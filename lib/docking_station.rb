require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    bike_available?
    Bike.new
  end

  def dock_bike(bike)
    @bike = bike
  end

  def bike_available?
    raise "No Bikes!" if self.bike == nil
  end

end
