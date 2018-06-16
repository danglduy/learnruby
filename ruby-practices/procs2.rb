def square(a, b, c)
  a.each do |x|
    b.call x * x
    c.call x * x * x
  end
end
proc = Proc.new{|y| puts y}
square([1, 2, 3], proc, proc)
