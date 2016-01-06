
class Vehicle
  @@number_of_vehicles = 0

  def initialize
  	@@number_of_vehicles += 1
  end

  def self.print_number_of_vehicles
  	puts "The superclass Vehicle has #{@@number_of_vehicles} vehicles!"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas."
  end
end

module Deliver
  def load_cargo(tonns)
    puts "I can load #{tonns} of cargo"
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
  attr_accessor :color, :year
  def initialize(year, model, color)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def to_s
    "My car is a #{color}, #{year}, #{@model}!"
  end

  def speed_up(num)
  	@current_speed += num
  	puts "You push the gas and accelerate #{num} mph."
  end

  def brake(num)
  	@current_speed -= num
  	puts "You push the break and decelerate #{num} mph."
  end

  def current_speed
  	puts "you are now going #{@current_speed} mph."
  end

  def shut_down
  	@current_speed = 0
  	puts "Let's park this bad boy!"
  end
end

class MyTruck < Vehicle
  include Deliver
  NUMBER_OF_DOORS = 2
end

Volvo = MyTruck.new
Vehicle.print_number_of_vehicles
Toyota = MyCar.new('1999', 'Cellica', 'black')
Vehicle.print_number_of_vehicles
Volvo.load_cargo(900)
Toyota.speed_up(40)
puts ' '
puts MyCar.ancestors
puts ' '
puts MyTruck.ancestors
puts ' '
puts Vehicle.ancestors
