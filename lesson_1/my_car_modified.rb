
class MyCar
	attr_accessor :color, :year

  def initialize(year, model, color)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas."
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

  def spray_paint(color)
  	self.color = color
  	puts "Your new #{color} paint job looks great!"
  end
end

my_car = MyCar.new(2014, 'Honda Accord', 'black')
puts my_car
MyCar.gas_mileage(13, 351)

 
