
class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

hello = Hello.new
hello.hi              #  =>   'Hello'

hello = Hello.new
hello.greet           #  =>  ArgumentError: wrong number of arguments (0 for 1)
	                  #  =>  from (irb):37:in `greet`

hello = Hello.new
hello.bye           #  =>   NoMethodError: undefined method `bye' 
                    #  =>   for #<Hello:0x007fbb222f3f20>

hello = Hello.new
hello.greet("Goodbye")   #  => Goodbye

Hello.hi             #  => NoMethodError: undefined method `hi' for Hello:Class
