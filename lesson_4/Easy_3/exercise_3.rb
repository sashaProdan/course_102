
class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name 
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

cat1 = AngryCat.new(12, 'kitty')
cat2 = AngryCat.new(5, 'teddy')

cat1.age     #  =>  12
cat1.name    #  => 'kitty'

cat2.age     #  => 5
cat2.name    #  => 'teddy'
