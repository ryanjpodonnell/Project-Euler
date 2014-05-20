# Largest palindrome product
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome
  palindromes = []
  999.downto(100) do |num1|
    999.downto(100) do |num2|
      product = num1 * num2
      palindromes.push(product) if product.to_s == product.to_s.reverse
    end
  end
  palindromes.sort.last
end

puts largest_palindrome