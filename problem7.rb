# 10001st prime
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

def is_prime?(num)
  (2..num-1).each do |itr|
    return false if num % itr == 0
  end
  true
end

def nth_prime(num)
  return 2 if num == 1
  
  num_primes = 1
  itr = 3
  while num_primes < num
    num_primes += 1 if is_prime?(itr)
    itr += 1
  end
  itr-1
end

puts nth_prime(6)