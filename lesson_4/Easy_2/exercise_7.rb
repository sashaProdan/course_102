
class Cat
  @@cats_count = 0

  def initialize(type)
  	@type = type
  	@age = 0
  	@@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

kitty = Cat.new("lazy")
Cat.cats_count
teddy = Cat.new("furry")
cat = Cat.new("white")
Cat.cats_count
