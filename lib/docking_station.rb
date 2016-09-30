require_relative 'bike.rb'

class DockingStation
  DEFAULT_CAPCITY = 20

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "There aren't any bikes!" if empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise "There is no room to dock the bike!" if full?
    @bikes << bike
  end

  private
  def full?
    @bikes.count >= DEFAULT_CAPCITY
  end

  def empty?
    @bikes.count == 0
  end
end

# ds = DockingStation.new
# bike = Bike.new
#
# # puts ds.release_bike

# This is a teeeeeeeest!!! Yeah buddy!
