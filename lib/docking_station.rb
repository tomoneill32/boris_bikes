require_relative './bike.rb'

class DockingStation 
  attr_reader :stored_bike

  def release_bike
    if @stored_bike == nil
      fail
    else
      @stored_bike
    end
  end

  def dock(bike)
    @stored_bike = bike
  end
end
