
class Computer
  attr_accessor :template

  def create_template
    @template = 'template 14231'
  end

  def show_template
    template
  end
end

mac = Computer.new
mac.show_template

#   ................................

class Computer
  attr_accessor :template

  def create_template
    self.template = 'template 14231'
  end

  def show_template
    self.template
  end
end

mac = Computer.new
mac.show_template
