# ------------------------------------------------------------------------------
# Problem 7
# ------------------------------------------------------------------------------
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6th prime is 13.
#
# What is the 10,001st prime number?
# ------------------------------------------------------------------------------

def is_prime?(number)
    for i in (2..number)
        if number % i == 0 && i != number
            return false
        end
    end
    return true;
end

num_arr = []
num = 0

until num_arr.length == 10001 do
  if is_prime?(num)
    num_arr << num
  end
  num +=1
end

puts num_arr[-1]

# ************************ #
# USING RUBY PRIME LIBRARY #
# ************************ #

require 'prime'

prime_arr = Prime.first 10001
puts prime_arr[-1]


# ------------------------------------------------------------------------------
# Answer: 104743
# ------------------------------------------------------------------------------
