require_relative './bike.rb'

class DockingStation 
  attr_reader :stored_bikes

  def initialize
    @stored_bikes = []
  end

  def release_bike
    if !@stored_bikes
      fail 'No bikes available'
    else
      @stored_bikes
    end
  end

  def dock(bike)
    fail 'dock full' if @stored_bikes
    @stored_bikes = bike
  end
end
