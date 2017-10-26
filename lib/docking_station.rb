class DockingStation

  attr_reader :bike_count

  def initialize(bike_count)
    @bike_count = []
    bike_count.times {@bike_count.push(Bike.new)}
  end

  def release_bike(amount_of_bikes)
    raise "There are no bikes at the docking station" if @bike_count.empty?
    last_bike = @bike_count.last(amount_of_bikes)
    amount_of_bikes.times {@bike_count.pop}
    last_bike
  end

 def dock_bike(amount_of_bikes)
   raise "DockingStation full." if @bike_count.count == 20
   @bike_count += amount_of_bikes

 end

end

class Bike

  def working?
  end

end
