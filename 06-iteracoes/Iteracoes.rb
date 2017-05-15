$init = 0
$max = 10

# while $init < $max do
#   puts 'iteration'
#   $init += 1
# end

# begin
#   puts 'iteração'
#   $init += 1
# end while $init < $max

for $init in 0..10
  $max *= 2
end
puts $max

$arr = ['item 1','item 2', 'item 3']
# for item in $arr
for item in (0..$arr.length)
  puts $arr[item]
end

$arr.each do |a|
  puts a
end

item = 0
until item > $arr.length do
  # puts item
  puts $arr[item]
  item += 1
end
