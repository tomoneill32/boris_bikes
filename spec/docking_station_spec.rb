require 'docking_station'

describe DockingStation do

  it { expect(subject).to respond_to :release_bike } #unit test

  it 'Checking to see if a bike from the docking station works' do #feature test
    station = DockingStation.new
    bike = Bike.new
    station.dock(bike)
    bike = station.release_bike
    expect(bike.working?).to eq(true)
  end

  it { expect(subject).to respond_to(:dock).with(1).argument } #unit test

  it 'Can dock a bike at a docking station' do #feature test
    bike = Bike.new
    station = DockingStation.new
    expect(station.dock(bike)).to eq(bike)
  end

  it { is_expected.to respond_to(:stored_bike) } #unit test

  it 'Can see a bike that has been docked' do # feature test
    station = DockingStation.new
    bike = Bike.new
    station.dock(bike)
    expect(station.stored_bike).to eq(bike)
  end

  it 'Releasing a bike from an empty dock produces an error' do
    station = DockingStation.new
    expect{station.release_bike}.to raise_error
  end
end

#I'd like docking stations not to release 
# bikes when there are none available.