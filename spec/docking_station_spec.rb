require 'docking_station'

describe DockingStation do

  before do
    @station = DockingStation.new
  end

  it "should respond to release bike" do
    expect(@station).to respond_to(:release_bike)
  end

  it "should respond to docking bike" do
    expect(@station).to respond_to(:dock_bike)
end

  it "should return a working bike" do
    bike = @station.release_bike
    expect(bike.working?).to eq (true)
  end

#   it "should allow a bike to be docked" do
#     bike = @station
#     expect(bike.dock_bike).to eq (true)
# end

  it "should see that a bike has been docked" do
    bike = Bike.new
    @station.dock_bike(bike)
    expect(@station.bike).to eq bike
  end
end
