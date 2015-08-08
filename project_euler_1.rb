# Using a for loop
sum = 0
for i in 1..999 do
  if i%3 == 0 || i%5 == 0
    sum +=i
  end
end

puts sum

# Using a while loop
sum2 = 0
i = 0
while i < 1000 do
  if i%3 == 0 || i%5 == 0
    sum2 +=i
  end
  i +=1
end

puts sum2
