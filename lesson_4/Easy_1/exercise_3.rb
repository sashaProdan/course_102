
#   When we called go_fast method from an instance of the Car or Truck class, 
#   the string printed includes the name of the type of vehicle, we are using.
#   How is this done?

#  From using self.class in the method of Speed module

module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed
  def go_slow
    puts "I am safe and driving slow."
  end
end

class Truck
  include Speed
  def go_very_slow
    puts "I am a heavy truck and like going very slow."
  end
end

honda = Car.new
honda.go_fast        #   =>   I am a Car and going super fast!

volvo = Truck.new
volvo.go_fast        #   =>   I am a Truck and going super fast!
