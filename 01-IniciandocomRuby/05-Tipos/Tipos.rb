my_string = 'This is a new teste from String class'

puts my_string.reverse

range = (2..4).to_a
puts range

teacher = Array.[]('L', 'LC', 'W')
teacher_2 = Array.[]('J', 'JC', 'K')

teacher.concat(teacher_2)

puts teacher

peoples = Hash["jose"=>10, "Luiz"=> 50, "Maria"=>5]
puts peoples
puts "#{peoples['jose']}"