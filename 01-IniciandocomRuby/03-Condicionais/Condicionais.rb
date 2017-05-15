$age = 0
$name = ''
$result = ''

puts 'What is your name ?'
$name = STDIN.gets

puts 'How old are you? '
$age - STDIN.gets.to_i

$result = if($age <= 20)
            'to old'
          else
            'to young'
          end
# ternaria
# $result = ($age <= 20) ? 'jovem' : 'velho!'

=begin
if ($age <= 20)
  puts 'To old'
else
  puts 'To young'
end
=end

=begin
if ($age >= 20)
  puts 'To old'
elsif ($age <= 18)
  puts 'To young'
end
=end

$car_is_on = true
# puts 'Car : ' unless $car_is_on # é executado se for false
unless $car_is_on
  puts 'car !!'
end

# Case
$week_day = 2
case $week_day
  when $week_day = 1
    puts 'Monday'
  when $week_day = 2
    puts 'Tuestday'
  when $week_day = 3
    puts 'Wednesday'
  else
    puts 'invalid option'
end


