def merge_sort(array, n = array.length - 1)
    if n < 1
        array
    else
        left_array = array[0..(n/2)] 
        right_array = array[((n/2)+1)..n]
        left = merge_sort(left_array) 
        right = merge_sort(right_array)
        merge(left, right)
    end   

end

def merge(left, right, sorted = [])
    sorted << (left[0] <= right[0] ? left.shift : right.shift) until left.empty? || right.empty?
    sorted + left + right

end


array = [9, 3, 8, 6, 8, 5, 7]

p merge_sort(array)
















