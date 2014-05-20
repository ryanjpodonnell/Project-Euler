# Smallest multiple
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def next_common_number(num1, num2, common = (num1 * num2))
  next_common = common
  while true
    return next_common if next_common % num1 ==0 && next_common % num2 == 0
    next_common += 1
  end
end

def smallest_multiple(range)
  range_arr = range.to_a
  smallest_multiple = next_common_number(range_arr[-1], range_arr[-2])
  
  while true
    is_smallest = true
    range.each do |itr|
      is_smallest = false if smallest_multiple % itr != 0
    end
    
    return smallest_multiple if is_smallest
    smallest_multiple = next_common_number(range_arr[-1], range_arr[-2], smallest_multiple + 1)
  end
end

puts smallest_multiple((1..20))