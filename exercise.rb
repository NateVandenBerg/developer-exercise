class Exercise
  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    size = 4 
    new_word = "marklar" 

    str.gsub(/\w+/) do |word|
      if word.length > size
            # Capitalize "marklar" if current word is capitalized
        word = word[0].match?(/[A-Z]/) ? new_word.capitalize : new_word
      else # Do nothing w/ word
        word
      end
    end
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    return 0 if nth < 2 # Do nothing if nth is too small

    prev, cur = 1, 1  #first 2 fib values
    total = 0         #sum of even fib
    # testing purposes
    #i = 3

    (3..nth).each do
      prev, cur = cur, prev + cur 
      total += cur if cur.even?   # If current fib is even, add to total
      # testing purposes
      #puts "i: #{i} fib: #{cur} total: #{total}" 
      #i += 1
    end

    total
  end
end
