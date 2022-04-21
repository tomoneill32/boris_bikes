require 'docking_station'

describe DockingStation do

  it { expect(subject).to respond_to :release_bike }

  #Arrange

  # create a docking station
  it 'Checking to see if a bike from the docking station works' do 
    station = DockingStation.new

    #Act
   # release a bike from the docking station
  
    bike = station.release_bike

    #Assert
    # check to see whether this bike works

    expect(bike.working?).to eq(true)
  end
  

end

# Add a test to your DockingStation specification that 
# a) gets a bike, and then 
# b) expects the bike to be working