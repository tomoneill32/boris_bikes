require_relative './bike.rb'

class DockingStation 
  
  attr_reader :stored_bikes
  DEFAULT_CAPACITY = 20
  
  def initialize
    @stored_bikes = []
  end

  def release_bike
    if @stored_bikes.empty?
      fail 'No bikes available'
    else
      @stored_bikes.pop
    end
  end

  def dock(bike)
    fail 'dock full' if self.full?
    @stored_bikes << bike
  end

  private

  def full?
    @stored_bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @stored_bikes.empty?
  end
  
end
