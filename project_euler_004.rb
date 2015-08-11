# ------------------------------------------------------------------------------
# Problem 4
# ------------------------------------------------------------------------------
# A palindromic number reads the same both ways. The largest palindrome made from
# the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.
# ------------------------------------------------------------------------------

# Method to test if an integer is a palendrome
def palindrome_test(int)
  if int == reverse(int)
    return true
  else
    return false
  end
end
# Method to reverse and integer
def reverse(int)
  reverse_int = ""
  while int > 0 do
    reverse_int << (int%10).to_s
    int = int/10
  end
  return reverse_int.to_i
end

num_arr = (100..999)
max_palindrome = 0

# Nested loop to iterate through every intger in num_arr, test if product is a
# palindrome and test if it is the largest palindrome so far.
num_arr.each do |num1|
  num_arr.each do |num2|
    test_num = num1*num2
    if palindrome_test(test_num)
      if test_num > max_palindrome
        max_palindrome = test_num
      end
    end
  end
end

puts max_palindrome

# ------------------------------------------------------------------------------
# Answer: 906609
# ------------------------------------------------------------------------------
