# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
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

  maxindex = 0
  i = 1
  while i < count.length
    if count [i] > count[maxindex]
      maxindex = i
    end 
    i = i + 1 
  end
  
  #TESTS
  #puts(string, count)
  #puts("\n\n")
  #puts(string[maxindex],count[maxindex])
  
  return string[maxindex],count[maxindex]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
