require_relative 'bike.rb'

class DockingStation
  attr_reader :bike
  def initialize
    @bike = 0
  end

  def release_bike

    if @bike > 0
      Bike.new
    else
      raise "There aren't any bikes!"
    end
  end

  def dock_bike
    if @bike == 0
      @bike += 1
    else
      raise "There is no room to dock the bike!"
  end
end
end

# ds = DockingStation.new
# bike = Bike.new
#
# # puts ds.release_bike

# This is a teeeeeeeest!!! Yeah buddy!
