# Largest prime factor
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

def is_prime?(num)
  is_prime = true
  (2..num-1).each do |itr|
    is_prime = false if num % itr == 0
  end
  is_prime
end

def factors(num)
  factors = []
  (1..num).each do |itr|
    if num % itr == 0
      return (num / itr) if (num / itr).prime?
    end
  end
end

p factors(600851475143)