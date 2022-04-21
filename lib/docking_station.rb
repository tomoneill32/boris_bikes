require_relative './bike.rb'

class DockingStation 
  attr_reader :stored_bike

  def release_bike
    if !@stored_bike
      fail 'No bikes available'
    else
      @stored_bike
    end
  end

  def dock(bike)
    fail 'dock full' if @stored_bike
    @stored_bike = bike
  end
end
