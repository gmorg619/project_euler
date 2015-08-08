fib_array = [1,2]
i = 1
sum = 0

while fib_array[i] < 4000000 do
  fib_array << fib_array[i] + fib_array[i-1]
  if fib_array[i]%2 == 0
    sum += fib_array[i]
  end
  i +=1
end

puts sum
