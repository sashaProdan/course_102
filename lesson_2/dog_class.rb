
class Dog
  def speak
    'bark!'
  end

  def swim
  	'swimming!'
  end
end

class Bulldog < Dog
  def swim
    "can't swim!"
  end
end

teddy = Dog.new
puts teddy.speak       # => 'bark!'
puts teddy.swim        # => 'swimming!'

bart = Bulldog.new
puts bart.speak        # => 'bark!'
puts bart.swim         # => "can't swim!"
