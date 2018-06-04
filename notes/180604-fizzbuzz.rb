a=[1,2,3,4,5,6]
a.each do |x|
  if x%2 == 0 && x%3 == 0
    puts "fizz buzz"
  elsif x%2 == 0
    puts "buzz"
  elsif x%3 == 0
    puts "fizz"
  end
end
