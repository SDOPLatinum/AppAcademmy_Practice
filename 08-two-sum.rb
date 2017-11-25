# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
  
  stable=0
  moving=0
  
  while moving<nums.length
    
    if nums[stable]+nums[moving]==0
      return [stable, moving]
    else
      moving+=1
    end
    
    if moving==nums.length && stable<nums.length-1
      moving=0
      stable+=1
    elsif moving==nums.length-1 && stable==nums.length-1
      return nil
    end
    
  end
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
