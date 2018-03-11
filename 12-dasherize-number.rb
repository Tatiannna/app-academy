# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
  num = num.to_s
  j = num.length
  if num[0].to_i % 2 == 1
    while j > 1
      num[j] = num[j-1]
      j = j - 1
    end
    num[1]= '-'
  end
  if num[num.length-1].to_i % 2 == 1
    num[num.length] = num[num.length-1]
    num[num.length-1] = '-'
  end
  
  
  i = 1
  while i < num.length - 1
    if num[i].to_i % 2 == 1
      j = num.length-1
      while j > i + 2
        num[j] = num[j-1]
        j = j - 1
      end
      num[i+1] = num[i]
      num[i] = '-'
      num[i+2] = '-'
      i = i + 3
    else
      i = i + 1
    end
  end 
  puts(num)
  return num  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
