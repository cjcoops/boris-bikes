require_relative 'docking_station.rb'

class Van

  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def load_bikes(dock)
    self.bikes = dock.bikes
  end
end
