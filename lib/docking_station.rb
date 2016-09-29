require_relative 'bike.rb'

class DockingStation
  attr_reader :bike
  def initialize
    @bike = 1
  end

  def release_bike

    if @bike > 0
      @bike = Bike.new
    else
      raise "There aren't any bikes!"
    end
  end

  def dock_bike(bike)
    @bike = bike
  end
end

# ds = DockingStation.new
# bike = Bike.new
#
# # puts ds.release_bike
