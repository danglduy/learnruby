a = [1, 2, 3, 4, 5, 6]
a.each do |x|
  if x.even? && x % 3 == 0
    puts 'fizz buzz'
  elsif x.even?
    puts 'buzz'
  elsif x % 3 == 0
    puts 'fizz'
  end
end
