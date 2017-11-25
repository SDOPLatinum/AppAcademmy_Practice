# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)
  
  stable=0
  moving=0
  difference=nums[stable]-nums[moving]
  count=0
  
  while moving<nums.length
    
    if difference<0
      count+=1
    end
    
    if count==2
      return nums[stable]
    else
      moving+=1
    end
    
    if moving==nums.length
      count=0
      moving=0
      stable+=1
    end
    
    if stable==nums.length
      return "This number array does not have a thrid greatest number."
    end
    
  end
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
