#quicksort

def qsort(arr, l=0, r=arr.size-1)
  i, j = l, r
  pivot = arr[(l + r) / 2]
  while i <= j
    i += 1 while arr[i] < pivot
    j -= 1 while arr[j] > pivot
    if i <= j
      arr[i], arr[j] = arr[j], arr[i]
      i += 1; j -= 1
    end
  end
  qsort(arr, l, j) if l < j
  qsort(arr, i, r) if r > i
end
