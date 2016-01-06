
class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
  	parse_full_name(full_name)
  end

  def name
  	puts "#{first_name} #{last_name}".strip
  end

  def name=(full_name)
  	parse_full_name(full_name)
  end
   
  private

  def parse_full_name(full_name)
    parts = full_name.split
    self.first_name = parts.first
    self.last_name = parts.size > 1 ? parts.last : ''
  end
end

bob = Person.new('Robert')
p bob.name
p bob.first_name
p bob.last_name
bob.last_name = 'Smith'
bob.name

bob.name = "John Adams"
p bob.first_name
p bob.last_name
