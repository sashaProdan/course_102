
class Pet
  def run
    'runnung!'
  end

  def jump
    'jumping!'
  end
end

class Dog < Pet
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end

  def fetch
    'fetching!'
  end
end

class Cat < Pet
  def speak
    'meow!'
  end
end

bars = Pet.new
kitty = Cat.new
ray = Dog.new

puts bars.run
puts bars.speak

puts kitty.speak
puts kitty.run
puts kitty.fetch

puts ray.speak
