# ------------------------------------------------------------------------------
# Problem 6
# ------------------------------------------------------------------------------
# The sum of the squares of the first ten natural numbers is,
#
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural
# numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred
# natural numbers and the square of the sum.
# ------------------------------------------------------------------------------

sum = 0
square = 0
num_arr = (1..100)

num_arr.each do |num|
  sum += (num*num)
  square +=num
end

square *= square
answer = square - sum

puts answer

# ------------------------------------------------------------------------------
# Answer: 25164150
# ------------------------------------------------------------------------------
