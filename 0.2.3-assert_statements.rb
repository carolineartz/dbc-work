#1) PASTE YOUR PREVIOUS IS_FIBONACCI? CODE HERE:
def is_fibonacci?(i)
  fibs = [1, 0]
  while i > fibs.last
    x, y = fibs.pop(2)
    fibs.push(x, y, x + y)
  end

  return true if (i == fibs.last)
  false
end

def assert
  raise 'Not fibonacci number!' unless yield
end

##CONVERTING MY ORIGINAL DRIVER CODE TO ASSERTIONS
#p is_fibonacci?(8670007398507948658051921) == true
assert {is_fibonacci?(8670007398507948658051921)}

#p is_fibonacci?(927372692193078999171) == false
assert {!is_fibonacci?(927372692193078999171)}

#p is_fibonacci?(0) == true
assert {is_fibonacci?(0)}


#2) REVIEW THE SIMPLE ASSERT STATEMENT
# test the method with driver code below.

def assert1
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert1 { name == "bettysue" }
assert1 { name == "billybob" }


#3) WRITE OUT IN PSEUDOCODE WHAT HAPPENS WHEN THE ABOVE CODE RUNS
# #assert: raise RuntimeError message unless passed block evaluates to true (`yield` yields to the passed block)
# set name to bettysue
# call #assert with block boolean name is equal to bettysue
# no exception is raised, evaluate to nil
# call #assert with block boolean name is equal to billybob
# exception raised because name == 'billybob' => false


#4) CONVERT THESE TESTS INTO ASSERT STATEMENTS
# puts is_fibonacci?(144) == true
assert {is_fibonacci?(144)}

# puts is_fibonacci?(1596) == false
assert {!is_fibonacci?(1596)}

# puts is_fibonacci?(610) == true
assert {is_fibonacci?(610)}

# puts is_fibonacci?(5000) == false
assert {!is_fibonacci?(5000)}

# puts is_fibonacci?(6600) == true    SHOULD BE    puts is_fibonacci?(6600) == false
# 6600 is not a fibonacci number; assertion that it is a fibonacci number raises RuntimeError. Corrected below.
assert {!is_fibonacci?(6600)}

# puts is_fibonacci?(6765) == true
assert {is_fibonacci?(6765)}


#5) BONUS: INCLUDE A CUSTOM ERROR MESSAGE
# Custom error message included in fibonacci assertion method above. Other bonus from Socrates below.

#6) BONUS: APPLY THE ASSERT METHOD TO ANOTHER CHALLENGE

def north_korean_cipher(coded_message, r=4)
  alphas=('a'..'z').to_a*2
  exaggerated_msg = coded_message.downcase.tr('a-z', alphas[26-r..52-r].join).gsub(/(\@|\#|\$|\%|\^|\&|\*)/m, " ")
  exaggerated_msg.gsub(/\d+/) { |num| num.to_i / 100 }
end

def assert
  raise 'Sad trombone. Decode attempt failure.' unless yield
end

#p north_korean_cipher('m^aerx%e&gsoi!') == 'i want a coke!'
assert {north_korean_cipher('m^aerx%e&gsoi!') == 'i want a coke!'}

#p north_korean_cipher('gsoi?&cygo.*m*aerx&e&hmix#kmrkiv$epi!') == 'coke? yuck. i want a diet ginger ale!'
assert {north_korean_cipher('gsoi?&cygo.*m*aerx&e&hmix#kmrkiv$epi!') == 'coke? yuck. i want a diet ginger ale!'}


#6) Reflection
# I liked this challenge. It forced me to brush up on blocks/yield and read up on assertions. In doing so,
# I came across a number of interesting articles on these topics as well as both behavior driven development and 
# its basis, test driven development. I have a lot to learn but this was a great introduction on the fundamental 
# process. 


