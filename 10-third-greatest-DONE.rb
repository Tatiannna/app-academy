# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)
  greatest1 = 0
  greatest2 = 0 
  greatest3 = 0

  i = 0
  while i < nums.length
    if nums[i] > greatest1
      greatest3 = greatest2
      greatest2 = greatest1
      greatest1 = nums[i]
    elsif nums[i] > greatest2
      greatest3 = greatest2
      greatest2 = nums[i]
    elsif nums[i] > greatest3
      greatest3 = nums[i]
    end
    i = i + 1
  end
  return greatest3
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
