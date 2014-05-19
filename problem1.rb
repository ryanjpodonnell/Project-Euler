# Multiples of 3 and 5
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

num_arr = []

(1...1000).each do |itr|
  if (itr % 3) == 0 || itr % 5 == 0
    num_arr.push(itr)
  end
end

puts num_arr.inject(:+)