def square(a)
  a.each do |x|
    yield x*x
  end
end
square([1,2,3]){|x| puts x}
