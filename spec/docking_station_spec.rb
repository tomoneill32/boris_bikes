require 'docking_station'

describe DockingStation do

  it { expect(subject).to respond_to :release_bike }

  it 'Checking to see if a bike from the docking station works' do 
    station = DockingStation.new
  
    bike = station.release_bike


    expect(bike.working?).to eq(true)
 
  end

  it { expect(subject).to respond_to(:dock).with(1).argument }

  it 'Can dock a bike at a docking station' do
    bike = Bike.new
    station = DockingStation.new
    expect(station.dock(bike)).to eq(bike)
  end

  it 'Can see a bike that has been docked' do
    station = DockingStation.new
    bike = Bike.new
    station.dock(bike)
    expect(station.stored_bike).to eq(bike)
  end

end
