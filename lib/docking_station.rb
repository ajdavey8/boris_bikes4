class DockingStation

  attr_reader :bike_count

  def initialize(bike_count)
  @bike_count = bike_count

  end

  def release_bike
    raise "There are no bikes at the docking station" if @bike_count == 0
    Bike.new
  end

 def dock_bike
   raise "DockingStation full." if @bike_count >= 10
   @bike_count += 1

 end

end

class Bike

  def working?
  end

end
