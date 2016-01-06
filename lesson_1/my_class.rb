module Habits
  def mew(sound)
    puts "#{sound}"
  end
end

class MyPet
  include Habits
end

my_cat = MyPet.new
my_cat.mew('Mrrr-mew')
