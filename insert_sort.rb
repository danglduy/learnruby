def insertion_sort(array)
  size = array.length
  i = 0
  for i in 0...size do
    current = array[i]
    j = i
    while j > 0 && array[j - 1] > current
      array[j] = array[j - 1]
      j -= 1
    end
    array[j] = current
  end
  return array
end

array = [6, 5, 3, 1, 8, 7, 2, 4]
p insertion_sort(array)
