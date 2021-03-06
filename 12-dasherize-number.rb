# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
  num=num.to_s
  tester=0
  
  while tester<num.length
    if (num[tester].to_i)%2==1
      if (num[tester+1].to_i)%2==0
        num[tester]="-#{num[tester]}-"
        tester+=4
      else
        num[tester]="-#{num[tester]}"
        tester+=2
      end
    else
      tester+=1
    end
  end
  
  if num[0]=="-"
    num[0]=""
  end
  
  if num[(num.length-1)]=="-"
    num[(num.length-1)]=""
  end
  
  return num
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts dasherize_number(203)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts dasherize_number(333)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
  )
puts dasherize_number(3223)
