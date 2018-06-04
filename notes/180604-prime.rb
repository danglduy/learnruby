a = 100
b = (2...a)
b.each do |x|
  prime = x
  b.each do |y|
    if x % y == 0 && y < x
      prime = nil
    end
  end
  if prime != nil then
    puts prime.to_s
  end
end
