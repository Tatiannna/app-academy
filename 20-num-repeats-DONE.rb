# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
  count = []
  
  i = 0
  while i < string.length
    j = i + 1
    count [i] = 1
    while j < string.length
      if string[i] == string[j]
        count[i] = count[i] + 1
        h = j
        while h < string.length - 1
          string[h] = string[h+1]
          h = h + 1
          #puts(string) for testing earlier
        end
        string[string.length-1] = ""
      else
      j = j + 1
      end
    end
    if( string[i+1]!= '')
      i = i + 1  
    end
  end

  numRepeats = 0
  i = 0
  while i < count.length
    if count[i] > 1
      numRepeats += 1
    end 
    i = i + 1 
  end
  
  return numRepeats
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
