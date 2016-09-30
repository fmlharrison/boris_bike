require_relative 'bike.rb'

class DockingStation
  attr_reader :bike

  def release_bike
    raise "There aren't any bikes!" unless @bike
    @bike
  end

  def dock_bike(bike)
    raise "There is no room to dock the bike!" if @bike
    @bike = bike
  end
end

# ds = DockingStation.new
# bike = Bike.new
#
# # puts ds.release_bike

# This is a teeeeeeeest!!! Yeah buddy!
