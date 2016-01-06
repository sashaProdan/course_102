
class Person
  attr_accessor :first_name, :last_name

  def initialize(first= '', last= '')
  	@first_name = first
  	@last_name = last
  end

  def name
  	puts "#{first_name} #{last_name}".strip
  end
end

bob = Person.new('Robert')
p bob.name
p bob.first_name
p bob.last_name
bob.last_name = 'Smith'
bob.name