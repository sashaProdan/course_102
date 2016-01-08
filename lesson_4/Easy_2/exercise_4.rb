
class BeesWax
  attr_accessor :type
  def initialize(type)
    @type = type
  end

  def describe_type
    puts "I am a #{type} of Bees Wax"
  end
end

bee = BeesWax.new("soft type")
puts bee.type
bee.describe_type
