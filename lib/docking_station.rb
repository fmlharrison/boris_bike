require_relative 'bike.rb'

class DockingStation
  attr_reader :peg

  def release_bike
    @bike = Bike.new
  end

  def dock_bike(peg)
    @peg = peg
end
end
