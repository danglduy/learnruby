def square(a, &p)
  a.each do |x|
    p.call x * x
  end
end
square([1, 2, 3]) {|x| puts x} # 1, 4, 9

def square(a, b, c)
  a.each do |x|
    b.call x * x
    c.call x * x * x
  end
end
proc = Proc.new{|x| puts x}
square([1, 2, 3], proc, proc)
