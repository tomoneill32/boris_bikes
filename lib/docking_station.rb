require_relative './bike.rb'

class DockingStation 
  attr_reader :stored_bike

  def release_bike
    return Bike.new
  end

  def dock(bike)
    @stored_bike = bike
  end
end
