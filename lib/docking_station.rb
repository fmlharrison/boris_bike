require_relative 'bike.rb'

class DockingStation
  DEFAULT_CAPCITY = 20

  attr_reader :bikes, :capacity, :broken_bikes

  def initialize(capacity =20)
    @bikes = []
    @broken_bikes = []
    @capacity = capacity
  end

  def release_bike
    raise "There aren't any bikes!" if empty?
    if @bikes.count == 0
      "No working bike available"
    else
      @bikes.pop
    end
  end

  def dock_bike(bike)
    raise "There is no room to dock the bike!" if full?
    if bike.broken_bike == true
      @broken_bikes << bike
    else
      @bikes << bike
    end
  end

  private
  def full?
    @bikes.count + @broken_bikes.count >= @capacity
  end

  def empty?
    @bikes.count + @broken_bikes.count == 0
  end
end

# ds = DockingStation.new
# bike = Bike.new
#
# # puts ds.release_bike

# This is a teeeeeeeest!!! Yeah buddy!
