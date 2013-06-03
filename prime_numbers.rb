# This prime number generator takes a number, max, and generates an array with prime numbers that are less than max.

def prime_numbers(max)
  arr = []
  number = 2
  while number < max
    arr.push(number) if is_prime?(number)
    number += 1
  end
  arr
end

def is_prime?(number)
  return false if number < 2
  i = 2
  while i < number
    return false if number % i == 0
    i += 1
  end
  true
end

puts "Type in a number and I will tell you what are the prime numbers preceding it: "
max = gets.chomp.to_i
puts "Here are the prime numbers that are less than #{max}:"
puts prime_numbers(max)