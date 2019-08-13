# Enter your procedural solution here

def largest_prime_factor(input)

    new_number = Integer.sqrt(input).round
    factors = []
    primes = []

    for num in (2..new_number) 
      if input % num == 0
        factors.push(num)
      end
    end
    
    factors.each do |num|
      if (1..num).select { |d| num % d == 0 } == [1, num]
        primes.push(num)
      end
    end
    
  return primes.max

end


