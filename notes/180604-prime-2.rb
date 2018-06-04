a = 100
b = (2...a)
c = (2...Math.sqrt(a).floor)
b.each do |x|
  prime = x
  c.each do |y|
    if x % y == 0
      prime = nil
    end
  end
  if prime != nil then
    puts prime.to_s
  end
end
