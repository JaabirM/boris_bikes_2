require_relative 'bike'
require_relative 'person'

class DockingStation
  DEFAULT_CAPACITY = 20
  
  attr_reader :bikes
  attr_reader :capacity
  attr_accessor :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock_bike(bike)
    fail "Docking station full" if full?
    bikes << bike
  end

  def release_bike
    fail "No bikes available" if empty?
    bikes.pop
  end

  private

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end
end