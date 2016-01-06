
class MyCar
  attr_accessor :color, :year
  
  def initialize(year, model, color)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
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

honda = MyCar.new(2014, 'honda accord', 'black')
honda.speed_up(35)
honda.current_speed
honda.speed_up(35)
honda.current_speed

honda.brake(30)
honda.current_speed
honda.brake(30)
honda.current_speed

honda.shut_down
honda.current_speed

puts honda.color
honda.color = 'Red'
puts honda.color

puts honda.year
honda.year = '2045'
puts honda.year

honda.spray_paint('blue')

