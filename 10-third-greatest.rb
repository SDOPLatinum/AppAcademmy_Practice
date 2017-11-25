# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)
  
  tester=0
  testee=0
  summation=nums[tester]-nums[testee]
  count=0
  
  while testee<nums.length
    
    if summation<0
      count+=1
      testee+=1
    else
      testee+=1
    end
    
    if count==2
      return nums[testee]
    end
    
    if testee==nums.length
      count=0
      testee=0
      tester+=1
    end
    
    if tester==nums.length
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
