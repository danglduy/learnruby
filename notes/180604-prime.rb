a = 100
b = (2...a)
b.each do |x|
  prime = x
  b.each do |y|
    if  y * y < x then
      if x % y == 0
        prime = nil
      end
    end
  end
  if prime != nil then
    puts prime.to_s
  end
end
