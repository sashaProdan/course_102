
class Bag
  def initialize(color, material)
    @color = color
    @material = material
  end
end

purse = Bag.new("leather")

    #   =>  ArgumentError: wrong number of arguments (1 for 2)
	#   =>  from (irb):92:in `initialize'
	#   =>  from (irb):98:in `new'

handbag = Bag.new("blue", "leather")

    #   =>   #<Bag:0x007f85aa0bb5a8 @color="blue", @material="leather">
    