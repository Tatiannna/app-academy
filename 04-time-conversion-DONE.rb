# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

def time_conversion(minutes)
    numHours = minutes / 60
    minutes = minutes % 60
  
 
  if minutes != 0
    return (numHours.to_s + ":" + minutes.to_s)
  else 
    return (numHours.to_s + ":" + minutes.to_s + '0')
  end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
puts('time_conversion(355) == "5:55": ' + (time_conversion(355) == '5:55').to_s)
puts(59/10)