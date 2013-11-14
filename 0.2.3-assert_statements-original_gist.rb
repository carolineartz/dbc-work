
#1) PASTE YOUR PREVIOUS IS_FIBONACCI? CODE HERE:


#2) REVIEW THE SIMPLE ASSERT STATEMENTr
# test the method with driver code below.

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }


#3) WRITE OUT IN PSEUDOCODE WHAT HAPPENS WHEN THE ABOVE CODE RUNS
#
#


#4) CONVERT THESE TESTS INTO ASSERT STATEMENTS

# puts is_fibonacci?(144) == true
# puts is_fibonacci?(1596) == false
# puts is_fibonacci?(610) == true
# puts is_fibonacci?(5000) == false
# puts is_fibonacci?(6600) == true
# puts is_fibonacci?(6765) == true

# Run your assert statements to find out which test has an incorrect expectation.  The error shown should point you to a line number trace of the offending assert statement.  Correct the expectation (`true` or `false`?), and rerun the code to make sure there are no other errors.

#
#Write down the integer that failed the assertion below:
# 


#5) BONUS: INCLUDE A CUSTOM ERROR MESSAGE 

# fibonacci_test.rb:21:in `assert': 66 is not a fibonacci (RuntimeError)
# 	from fibonacci_test.rb:26:in `<main>'

