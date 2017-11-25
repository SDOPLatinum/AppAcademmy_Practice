# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  
  candidate=0
  tester=0
  count=0
  best_count=0
  best_letter=0
  
  while tester<string.length
    
    if string[candidate]==string[tester]
      count+=1
    end
    
    tester+=1
    
    if tester==string.length && candidate<string.length-1
      
      if count>best_count
        best_count=count
        best_letter=candidate
      end
        
      tester=0
      candidate+=1
      count=0
      
    end
    
  end
  
  return [string[best_letter], best_count]
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
