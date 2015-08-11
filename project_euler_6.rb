# ------------------------------------------------------------------------------
# Problem 6
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

def sum_of_squares(array)
  sum = 0
  array.each do |num|
    sum += (num*num)
  end
  return sum
end

def square_of_sums(array)
  square = 0
  array.each do |num|
    square +=num
  end
  return square*square
end

num_arr = (1..100).to_a
answer = square_of_sums(num_arr) - sum_of_squares(num_arr)

puts answer

# ------------------------------------------------------------------------------
# Answer: 25164150
# ------------------------------------------------------------------------------
