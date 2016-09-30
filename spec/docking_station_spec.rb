require 'docking_station'
require 'bike'

describe DockingStation do

  before do
    @station = DockingStation.new
    #@bad_bike = Bike.new
  end

  it "should respond to release bike" do
    expect(@station).to respond_to(:release_bike)
  end

  it "should not release a bike, if the docking station is empty" do
   expect { @station.release_bike }.to raise_error "There aren't any bikes!"
 end

 it "should only release working bikes" do
   bike = Bike.new
   bike.report_broken
   @station.dock_bike(bike)
   expect(@station.release_bike).to eq "No working bike available"
 end

  it "should respond to docking bike" do
    expect(@station).to respond_to(:dock_bike).with(1).argument
end

  it "should not dock a bike if station is full" do
    DockingStation::DEFAULT_CAPCITY.times { @station.dock_bike(Bike.new) }
    expect { @station.dock_bike(Bike.new) }.to raise_error "There is no room to dock the bike!"
  end

  it "should return a working bike" do
    bike = Bike.new
    expect(bike.not_working?).to eq (false)
  end

  it "should allow a bike to be docked" do
    bike = Bike.new
    expect(@station.dock_bike(bike)).to eq [bike]
  end

  describe "#initialize" do
    context "user sets capacity" do
      it "should allow user to set a capacity" do
        @station.instance_variable_get("@capacity")
      end
    end
    context "use defalt capacity" do
      it "should use default capacity of 20" do
        expect(@station.capacity).to eq 20
      end
    end
  end

end
