require 'docking_station'

describe DockingStation do

  before do
    @station = DockingStation.new
  end

  it "should respond to release bike" do
    expect(@station).to respond_to(:release_bike)
  end

  it "should not release a bike, if the docking station is empty", focus: true do
   expect { @station.release_bike }.to raise_error
  end

  it "should respond to docking bike" do
    expect(@station).to respond_to(:dock_bike)
end

  it "should not dock a bike if station is full", focus: true do
    @station.dock_bike
    expect { @station.dock_bike }.to raise_error
  end

  it "should return a working bike" do
    bike = Bike.new
    expect(bike.working?).to eq (true)
  end

#   it "should allow a bike to be docked" do
#     bike = Bike.new
#     expect(bike.dock_bike).to eq (true)
# end

  it "should see that a bike has been docked" do
    bike = Bike.new
    @station.dock_bike
    expect(@station.bike).to eq 1
  end
end
