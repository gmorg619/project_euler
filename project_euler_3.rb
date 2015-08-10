def largest_prime_factor(number)
  answer = number
  if number%2 == 0
    number /=2
    return largest_prime_factor(number)
  elsif number%3 == 0
    number /=3
    return largest_prime_factor(number)
  # elsif number%5 == 0
  #   return largest_prime_factor(number/5)
  # elsif number%7 == 0
  #   return largest_prime_factor(number/7)
  # elsif number%11 == 0
  #   return largest_prime_factor(number/11)
  # elsif number%13 == 0
  #   return largest_prime_factor(number/13)
  # else
  #   return answer
  end

end

puts largest_prime_factor(600851475143)
