class Bike
  def initialize
    @broken_bike = false
  end

  attr_reader :bike, :broken_bike

  def not_working?
    @broken_bike
  end

  def report_broken
    @broken_bike = true
  end
end
