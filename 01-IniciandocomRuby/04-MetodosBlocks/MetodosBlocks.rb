# Methodos
$number = 0

puts "Number: "
$number = STDIN.gets.to_i

def fatorial(number)
  if number == 0
    return 1
  else
    return number * fatorial(number - 1)
  end
end

$result = fatorial($number)

puts $result


# blocks

def block_1()
  puts 'Dentro do bloco!'
  yield
end

block_1 {puts 'Esse é meu primeiro bloco'}