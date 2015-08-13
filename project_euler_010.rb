# ------------------------------------------------------------------------------
# Problem 10
# ------------------------------------------------------------------------------
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.
# ------------------------------------------------------------------------------
require 'prime'
def is_prime(number)
    for i in (2..number)
        if number % i == 0 && i != number
            return false
        end
    end
    return true;
end

sum = 0
j = 1

while j < 2000000 do
  if is_prime(j)
    sum += j
  end
  j +=1
end

puts sum

# ************************ #
# USING RUBY PRIME LIBRARY #
# ************************ #

# require 'prime'
# sum = 0
# i = 0
#
# Prime.each(2000000) do |prime|
#   sum += prime
# end
#
# puts sum

# ------------------------------------------------------------------------------
# Answer: 142913828922
# ------------------------------------------------------------------------------
