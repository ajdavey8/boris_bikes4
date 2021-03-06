require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bike_count

  def initialize(bike_count, capacity = DEFAULT_CAPACITY)
    @capacity  = capacity
    @bike_count = []
    bike_count.times { @bike_count << Bike.new }
  end

   private

  def empty?
    @bike_count.count == 0 ? true : false
  end

   def full?
     @bike_count.count >= @capacity ? true : false
   end

  public

  def release_bike(amount_of_bikes)
    raise "There are no bikes at the docking station" if empty?
    last_bike = @bike_count.last(amount_of_bikes)
    amount_of_bikes.times {@bike_count.pop}
    last_bike
  end

 def dock_bike(amount_of_bikes)

   raise "Docking Station full." if full?
   amount_of_bikes.times { @bike_count << Bike.new }
 end

end
