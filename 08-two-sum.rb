# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
  
  partner1=0
  partner2=0
  summation=parnter1+partner2
  output=[partner1, partner2]
  
  while partner2<nums.length
    
    if summation==0
      return output
    else
      partner2+=1
    end
    
    if partner2==nums.length-1 && partner1<nums.length-1
      partner2=0
      partner1+=1
    else 
      partner2+=1
    end
    
  end
  
  return output
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
