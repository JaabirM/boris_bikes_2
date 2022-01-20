require_relative 'bike'
require_relative 'person'

class DockingStation

  def release_bike
    bike1 = Bike.new
    puts bike1.working?
  end

  def dock_bike
    puts "Bike is docked!"
  end

  def say_hello
    return "This docking station says hello!"
  end

end

docking_station = DockingStation.new 
docking_station.release_bike
docking_station.dock_bike