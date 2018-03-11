# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(num1, num2)
  if num1 >= num2
    smallest = num2
    largest = num1
    if num1% num2 == 0
      return num2
    end
  else
    smallest = num1
    largest = num2
    if num2 % num1 == 0
      return num1
    end
  end
  
  i = smallest/2
  while i > 0
    if smallest % i == 0 && largest % i == 0
      return i
    end
    i -= 1
  end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'greatest_common_factor(3, 9) == 3: ' +
  (greatest_common_factor(3, 9) == 3).to_s
)
puts(
  'greatest_common_factor(16, 24) == 8: ' +
  (greatest_common_factor(16, 24) == 8).to_s
)
puts(
  'greatest_common_factor(3, 5) == 1: ' +
  (greatest_common_factor(3, 5) == 1).to_s
)
