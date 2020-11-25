#define a method which takes in an array as its parameter
#looping through the array
#set the value of swap to false
#if the lenght of array is 1 or less than 1 we shouldn't swap
#comparison of first and second elements 
#If the element on the left is greater than the one on the right swap the two


def bubble_sort(array)
  array_length = array.size
  return array if array_length <= 1
  
  loop do 
    swap = false
    (array_length - 1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swap = true
      end
    end
    break if not swap
  end
  array
end

puts bubble_sort([5, 8, 3, 2, 1]);

def bubble_sort_by array
  unsort = true
  while unsort do
    i = 0
    unsort = false
    while i < (array.length - 1)
      if (yield array[i], array[i + 1]).to_i >= 0
        array[i], array[i + 1] = array[i + 1], array[i]
        unsort = true
      end
      i += 1
    end
  end
  print array
end
bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end
