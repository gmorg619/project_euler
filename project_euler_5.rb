def evenly_divisible(num)
  boolean = true
  num_arr = (11..20).to_a #Changed to 11 to increase speed of program 1-10 are covered in 11-20

  num_arr.each do |value|
    if num%value == 0
      boolean = true
    else
      return false
    end
  end

  return boolean
end

# if 2520 is the smallest number that can be divided by each num from one to ten then
# the smallest num that can be divided from one to twenty must be at least this big
num = 2520

until evenly_divisible(num) == true do
  num +=20 # must be divible by 20
end

puts num
