require 'pry'

def factors(number)
  dividend = number
  divisors = []
  binding.pry
  (1..number).each do |n|
    binding.pry
    divisors << dividend / n if dividend % n == 0
    # puts number
    binding.pry
  end
    puts divisors
end

factors(10)



def factors(number)
  dividend = number
  divisors = []
  (1..number).each do |n|
    divisors << dividend / n if dividend % n == 0
  end
    divisors
end

factors(10)
