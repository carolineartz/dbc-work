# REVIEWING ASSERT STATEMENT
# ---------

def assert1
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert1 { name == "bettysue" }
assert1 { name == "billybob" }

# Pseudocode:
# #assert: raise RuntimeError message unless passed block evaluates to true (`yield` yields to the passed block)
# set name to bettysue
# call #assert with block boolean name is equal to bettysue
# no exception is raised, evaluate to nil
# call #assert with block boolean name is equal to billybob
# exception raised because name == 'billybob' => false

# ORIGINAL IS_FIBONACCI? CODE AND ASSERT STATEMENTS
# ---------
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


# CONVERT THESE TESTS INTO ASSERT STATEMENTS
# puts is_fibonacci?(144) == true
# puts is_fibonacci?(1596) == false
# puts is_fibonacci?(610) == true
# puts is_fibonacci?(5000) == false
# puts is_fibonacci?(6600) == true    -->    puts is_fibonacci?(6600) == false
# puts is_fibonacci?(6765) == true

assert {is_fibonacci?(144)}
assert {!is_fibonacci?(1596)}
assert {is_fibonacci?(610)}
assert {!is_fibonacci?(5000)}
assert {!is_fibonacci?(6600)}
assert {is_fibonacci?(6765)}


# BONUS: APPLY THE ASSERT METHOD TO ANOTHER CHALLENGE
# ---------

def north_korean_cipher(coded_message, r=4)
  alphas=('a'..'z').to_a*2
  exaggerated_msg = coded_message.downcase.tr('a-z', alphas[26-r..52-r].join).gsub(/(\@|\#|\$|\%|\^|\&|\*)/m, " ")
  exaggerated_msg.gsub(/\d+/) { |num| num.to_i / 100 }
end

def assert
  raise 'Sad trombone. Decode attempt failure.' unless yield
end

#p north_korean_cipher('m^aerx%e&gsoi!') == 'i want a coke!'
#p north_korean_cipher('gsoi?&cygo.*m*aerx&e&hmix#kmrkiv$epi!') == 'coke? yuck. i want a diet ginger ale!'

assert {north_korean_cipher('m^aerx%e&gsoi!') == 'i want a coke!'}
assert {north_korean_cipher('gsoi?&cygo.*m*aerx&e&hmix#kmrkiv$epi!') == 'coke? yuck. i want a diet ginger ale!'}


# REFLECTION
# ---------
# I liked this challenge. It forced me to brush up on blocks/yield and read up on assertions. In doing so,
# I came across a number of interesting articles on these topics as well as both behavior driven development and 
# its basis, test driven development. I have a lot to learn but this was a great introduction on the fundamental 
# process. 


