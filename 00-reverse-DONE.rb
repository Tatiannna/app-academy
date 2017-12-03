# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

def reverse(string)
  newstring= []
  
  i = string.length
  while i > 0
    newstring[string.length-i] = string[i-1]
    i = i - 1
  end
  
  return newstring.join
end

