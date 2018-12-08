def selection_sort(a)
  size = a.length
  for i in 0...size do
    min_index = i
    for j in (i+1)...size do
      if a[j] < a[min_index]
        a[j], a[min_index] = a[min_index], a[j]
      end
    end
  end
  a
end

a = [5, 6, 3, 1, 8, 7, 2, 4]
p selection_sort(a)
