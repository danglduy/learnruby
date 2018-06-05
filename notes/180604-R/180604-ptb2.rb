a = 1
b = 0
c = 3
if a == 0
  if b == 0
    if c == 0
      puts 'Vo so nghiem'
    else
      puts 'Vo nghiem'
    end
  else
    x = -c / b
    puts '1 nghiem: ' + x.to_s
  end
else
  d = b * b - 4 * a * c
  if d < 0
    puts 'Vo nghiem'
  elsif d == 0
    x = (-b) / (2 * a)
    puts '1 nghiem: ' + x.to_s
  else
    x1 = (-b + Math.sqrt(d)) / (2 * a)
    x2 = (-b - Math.sqrt(d)) / (2 * a)
    puts 'Nghiem 1: ' + x1.to_s
    puts 'Nghiem 2: ' + x2.to_s
  end
end