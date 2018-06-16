def square(a, &b)
  a.each do |x|
    b.call x * x
  end
end
square([1, 2, 3]){|x| puts x}
