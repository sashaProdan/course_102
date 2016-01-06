class Vehicle
  attr_accessor :year, :model, :color
  @@number_of_vehicles = 0
  
  def initialize(year, model, color)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @@number_of_vehicles += 1
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

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year
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

  def to_s
    "My car is a #{self.color}, #{self.year}, #{self.model}!"
  end
end

class MyTruck < Vehicle
  include Deliver

  NUMBER_OF_DOORS = 2

  def to_s
    "My truck is a #{self.color}, #{self.year}, #{self.model}!"
  end
end

honda = MyCar.new(1991, 'honda accord', 'red')
puts honda.age