
=begin
As you are debugging, ask yourself:
* Do you have enough information to decipher the problem?  
* Is the error message referencing a line in your file, or a different file?
* Is there a methodology that you are following to systematically tackle these bugs?  What is a step by step approach? 


###2) Decipher the bugs
For each bug (there are three initial bugs that cause interpreter errors), answer the following questions:

--- Bug 1 ---
* what is the exact description of the error?
	valid_triangle? expects 3 arguments
	expected: 3 got: 4 (compared using ==)
* what is the exact line number the error is appearing?
	1
* before you fix the bug, what do you think is causing the error?
	The triangle method should accept 3 arguments (arity should equal 3) but is passed 4 arguments

--- Bug 2 ---
* what is the exact description of the error?
	valid_triangle? returns true for an equilateral triangle
	undefined method `+' for nil:NilClass
* what is the exact line number the error is appearing?
	6
* before you fix the bug, what do you think is causing the error?
	all the sides have the same length, so the logic falls to line 6 where #+ method is called on sum, which is just being defined there and thus is nil.

--- Bug 3 ---
* what is the exact description of the error?
	valid_triangle? returns false if any of the arguments are 0
	expected: false value got: true
* what is the exact line number the error is appearing?
	17? (originally 16; no longer my 17 after further debugging)
* before you fix the bug, what do you think is causing the error?
	1. logic for filtering out instances when a side of length 0 is incorrect:
		originally: if any of them are not equal to zero (regardless of whether the other two are or not 0), evaluate to true and then follow the logic to return "false"
	2. "false" is a string and not boolean false. Ruby strings are truthy and evaluate to true. 



###3) Pass the tests 

#I didn't have any more bugs and I'm not sure where to go from here...

--- Last Bug ---
The last bug isn't causing interpreter errors, but it's causing the output of the program to fail the RSpec tests.  

When you solve the error, describe what is happening as clearly as possible:


###4) Review your process and methodology

* What were your steps to tackle this problem?

* Write down the processes you followed that could be applied in other debugging situations.


###5) Submit and Reflect 

Review other solutions and the canonical solution listed on the "Review and Reflect" tab.  

Take a moment to reflect on the canonical solution and the solutions of other students. Add any insights to your gist to help distill your own process here:



=end

###Include your final code below (with driver code and expectations!):

def valid_triangle?(a, b, c)
  sum = 0
  if a == 0 || b == 0 || c == 0
    return false
  else
    if a >= b
      largest = a
      sum += b
    else largest = b
      sum += a
    end
    if c > largest
      sum += largest
      largest = c
    else sum += c
    end
    if sum > largest
      return true
    else
      return false
    end
  end
end
