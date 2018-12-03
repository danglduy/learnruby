def quick_sort(a)
  return a if a.length <= 1
  pivot = a[0]
  less = Array.new
  more = Array.new
  size = a.length

  for i in a[1..-1] do
    less << i if i < pivot
    more << i if i > pivot
  end

  # less, more = a[1..-1].partition {|x| x < pivot}
  quick_sort(less) + [pivot] + quick_sort(more)
end

a = [5, 6, 3, 1, 8, 7, 2, 4]
p quick_sort(a)
