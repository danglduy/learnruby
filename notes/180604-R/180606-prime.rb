a = 100
b = (2...a).to_a
c = (2...a).to_a
b.each do |x|
  c.each do |y|
    z = x * y
    if z < a
      b.delete(z)
    end
  end
end
b.each do |x|
  puts x
end
