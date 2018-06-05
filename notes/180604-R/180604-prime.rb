a = 100
b = (2...a)
c = (3...Math.sqrt(a).floor).delete_if{|n| n % 2 == 0}
b.each do |x|
  prime = x
  if x % 2 == 0 && x > 2 then 
    prime = nil
  end
  if x == 2 then 
    prime = x 
  elsif x == 3 then 
    prime = x 
  else  
    c.each do |y|
      if prime != nil
        if y < x then
          if x % y == 0
            prime = nil
          end
        end
      end
    end
  end
  if prime != nil then
    puts prime.to_s
  end
end