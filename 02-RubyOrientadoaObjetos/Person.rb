class Person

  attr_reader :name, :age, :height
  attr_writer :name

  def say(name)
    puts 'I\'m talking with ' + name
  end

  def walk
    puts 'I\'m Walking'
  end
end

jose = Person.new
jose.say('José Malcher Jr.')
jose.walk
jose.name = 'JOSÉ STÉLIO MALCHER JR.'
puts jose.name