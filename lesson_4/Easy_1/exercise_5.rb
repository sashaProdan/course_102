
class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

apple = Fruit.new("Apple")
puts apple.instance_variables             # =>    []

thin_crust = Pizza.new("Thin Crust")
puts thin_crust.instance_variables        # =>   [:@name]
