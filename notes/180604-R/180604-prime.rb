a = 100
b = (2...a)
c = (3...Math.sqrt(a).floor).to_a.delete_if{|x| x % 2 == 0}
b.each do |x|
  prime = x
  if x % 2 == 0 && x > 2
    prime = nil
  end
  if x == 2
    prime = x
  elsif x == 3
    prime = x
  else
    c.each do |y|
      if !prime.nil?
        if y < x
          if x % y == 0
            prime = nil
            return
          end
        end
      end
    end
  end
  if !prime.nil?
    puts prime.to_s
  end
end
