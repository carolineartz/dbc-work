class Student

  attr_accessor :scores, :name

  def initialize(args)   #Use Named Arguments!
    #your code here
  end

  
end

## ADD YOUR CODE HERE and IN THE CLASS ABOVE

#1. Create an array of 5 Students each with 5 test scores between 0 and 100.  
# The first Student should be named "Alex" with scores [100,100,100,0,100]


#2. Add average and letter_grade methods to the Student class.


#3. Write a linear_search method that searches the student array for a student name
# and returns the position of that student if they are in the array.




#===========DRIVER CODE : DO NOT MODIFY =======

#Make sure these tests pass
# Tests for part 1:

p students[0].name == "Alex"
p students[0].scores.length ==5
p students[0].scores[0]==students[0].scores[4]
p students[0].scores[3]==0


# Tests for part 2

p students[0].average == 80
p students[0].letter_grade == 'B'

# Tests for part 3

p linear_search(students,"Alex")==0
p linear_search(students, "NOT A STUDENT")==-1

