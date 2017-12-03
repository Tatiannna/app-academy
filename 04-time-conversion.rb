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
