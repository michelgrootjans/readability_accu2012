class Fixnum
  def is_multiple_of? number
    return self%number == 0 && self != number
  end
end

# implementation of the sieve of Erastosthenes
# http://en.wikipedia.org/wiki/Sieve_of_Erastothenes
def primes_up_to max_value

  prime_candidates = (2..max_value).to_a

  (2..(max_value/2)).each do |prime|
    prime_candidates.delete_if{|number| number.is_multiple_of?(prime) }
  end

  prime_candidates
end