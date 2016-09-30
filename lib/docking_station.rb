require_relative 'bike.rb'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "There aren't any bikes!" if @bikes.count == 0
    @bikes
  end

  def dock_bike(bike)
    raise "There is no room to dock the bike!" if @bikes.count >= 20
    @bikes << bike
  end
end

# ds = DockingStation.new
# bike = Bike.new
#
# # puts ds.release_bike

# This is a teeeeeeeest!!! Yeah buddy!
