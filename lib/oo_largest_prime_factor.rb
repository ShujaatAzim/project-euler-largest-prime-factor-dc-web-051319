# Enter your object-oriented solution here!
class LargestPrimeFactor

    def initialize(num)
        @num = num
    end

    def number
        new_number = Integer.sqrt(@num).round
        factors = []
        primes = []
    
        for num in (2..new_number) 
          if @num % num == 0
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


end