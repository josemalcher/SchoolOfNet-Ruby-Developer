number1 = 1
number2 = 2

puts 'Number 1: '
number1 = STDIN.gets
number1 = number1.to_i

puts 'Number 2: '
number2 = STDIN.gets
number2 = number2.to_i

total = number1 + number2
# total = number1 - number2
# total = number1 * number2
# total = number1 / number2
# total = number1 ** number2
puts total
puts 'Resultado' + total.to_s

# puts "total da soma #{total}"

# Comparações


puts number1 == number2
puts number1 != number2

puts number1.equal? number2 # verifica o tipo
puts number1.eql? number2 # verifica o tipo e objeto id é igual

puts number1 > number2

puts number1 <=> number2 # 1 0 -1 união das funções





