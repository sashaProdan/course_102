
class Television
  def self.manufacturer
    puts "I am main Class"
  end 

  def model
    puts "I am a cool TV set"
  end
end

tv = Television.new
tv.manufacturer            #  => NoMethodError: undefined method `manufacturer'
                           #    for #<Television:0x007fe87118d808>

tv.model                   #  => 'I am a cool TV set'

Television.manufacturer    #  => 'I am main Class'

Television.model           #  => NoMethodError: undefined method `model' 
                           #    for Television:Class
                           