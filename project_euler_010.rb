# ------------------------------------------------------------------------------
# Problem 10
# ------------------------------------------------------------------------------
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.
# ------------------------------------------------------------------------------

# WARNING!!! THIS CODE WORKS BUT WILL TAKE A SERIOUSLY FREAKIN LONG TIME TO RUN!
# My best estimate is that it will take somewhere around 4 hrs to finish.

def is_prime?(number)
    for i in (2..number)
        if number % i == 0 && i != number
            return false
        end
    end
    return true;
end

sum = 0

for i in 1..200000
  if is_prime?(i)
    sum += i
  end
end

puts sum

# ************************ #
# USING RUBY PRIME LIBRARY #
# ************************ #

# This code is way faster (3 seconds), but is kind of cheating

require 'prime'

sum = 0
i = 0

Prime.each(2000000) do |prime|
  sum += prime
end

puts sum

# ------------------------------------------------------------------------------
# Answer: 142913828922
# ------------------------------------------------------------------------------
