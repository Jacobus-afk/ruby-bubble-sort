def bubble_sort(unsorted_arr)
    # https://en.wikipedia.org/wiki/Bubble_sort
    n = unsorted_arr.length()

    loop do
        newn = 0
        for i in  1..n-1 do
            if unsorted_arr[i - 1] > unsorted_arr[i]
                temp = unsorted_arr[i]
                unsorted_arr[i] = unsorted_arr[i - 1]
                unsorted_arr[i - 1] = temp
                newn = i
            end
        end
        n = newn
        break if n <= 1
    end
    unsorted_arr
end

print bubble_sort([4,3,78,2,0,2])