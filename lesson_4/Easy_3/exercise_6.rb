
class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0       
  end

  def make_one_year_older
    self.age += 1             # 1.
  end
end

#       OR

class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    @age += 1                 #  2.
  end
end
