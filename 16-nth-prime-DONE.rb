# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.

# You may use our `is_prime?` solution.
def isPrime(number)
  i = 2
  
  if (number < 2)
    return false
  end
  while i <= number/2
    if number % i == 0
      return false
    else
      i = i + 1
    end
  end
  
  return true

end
#----------------------------------------------------------
def nth_prime(number)
  primeCount = 0
  
  i = 0
  # i iterates though every number to check if prime. will be primes and not primes. not important
  #primeCount counts primes. We stop when primeCount==number, we dont't care what i is until the very end when 
  #we are returning what that nth prime number happened to be
  #writing this because the 2nd time i ever looked at this code, only the day after i wrote it, i was like wtf
  
  while primeCount < number
    if isPrime(i)
      primeCount = primeCount + 1
      if primeCount == number
        return i 
      end 
    end
    i = i + 1
  end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)

#puts(nth_prime(10001)) for Eu07