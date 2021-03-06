# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.

def nearby_az(string)
  
  position_a=0
  position_z=0
  count=0
  
  while count<string.length && !((position_z-position_a)>0 && (position_z-position_a)<4)
    if string[count]=="a"
      position_a=count
      count+=1
    elsif string[count]=="z"
      position_z=count
      count+=1
    else
      count+=1
    end
  end
  
  if (position_z-position_a)>0 && (position_z-position_a)<4
    return true
  else
    return false
  end
    
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nearby_az("baz") == true: ' + (nearby_az('baz') == true).to_s)
puts('nearby_az("abz") == true: ' + (nearby_az('abz') == true).to_s)
puts('nearby_az("abcz") == true: ' + (nearby_az('abcz') == true).to_s)
puts('nearby_az("a") == false: ' + (nearby_az('a') == false).to_s)
puts('nearby_az("z") == false: ' + (nearby_az('z') == false).to_s)
puts('nearby_az("za") == false: ' + (nearby_az('za') == false).to_s)
