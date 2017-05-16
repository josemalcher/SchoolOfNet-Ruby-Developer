class Person

  attr_reader :name, :age, :height
  attr_writer :name

  def initialize(color, width)
    puts 'My CONTRUCTOR ' + color
  end

  def say(name)
    puts 'I\'m talking with ' + name
  end

  def walk
    puts 'I\'m Walking'
    my_private_method
  end

  private
    def my_private_method
      puts 'this is private'
    end
  protected
    def my_protected_method
      puts 'this is my protectec'
    end

end

# jose = Person.new
# jose.say('José Malcher Jr.')
# jose.walk
# jose.name = 'JOSÉ STÉLIO MALCHER JR.'

jose = Person.new('blue', 0.90)
jose.walk
maria = Person.new('red', 0.40)
erik = Person.new('yello', 0.70)

puts jose.name