# OO Basics: Student


# I worked on this challenge [with: Hanna Taylor ].
# This challenge took me [2] hours.

# Pseudocode
# Input is Array of 5 students, each student being a key containing a value of test score.
# Output of one method is the average of their score, another is their name from the search method.

# For average score, iterate through the object's value and gets assigned a letter grade based on the score. Get sum and divide by length of array.

# Linear Search
# Using a for and each loop.

# Binary Search
# Using blocks of if statements.

# Initial Solution


# Initial Solution
class Student
  attr_accessor :scores, :first_name

  def initialize(args)   #Use named arguments!
    @first_name = args[:first_name]
    @scores = args[:scores]
  end

  def average
    sum = 0
    @scores.each {|i| sum += i }
    @result = sum/@scores.length
  end

  def letter_grade
    average
    if average >= 90
      letter = "A"
    elsif average >= 80
      letter = "B"
    elsif average >= 70
      letter = "C"
    elsif average >= 60
      letter = "D"
    else
      letter = "F"
    end
  end

  def linear_search(array, name)
     index = 0
     if array[index].first_name == name
       return index
     index += 1
     else -1
     end
  end


  def binary_search(array, name)
  index = 0
    if array.bsearch {|firstname| firstname == name  }
      return index
      index +=1
    else -1
    end
  end


end

alex = Student.new({first_name: "Alex", scores:[100,100,100,0,100]})
john = Student.new({first_name: "John", scores:[65,80,100,80,72]})
hanna = Student.new({first_name: "Hanna", scores:[90,99,97,100,91]})
lisa = Student.new({first_name: "Lisa", scores:[12,0,35,55,50]})
bart = Student.new({first_name: "Bart", scores:[90,37,84,26,12]})

students = [alex, john, hanna, lisa, bart]







# Refactored Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(args)   #Use named arguments!
    @first_name = args[:first_name]
    @scores = args[:scores]
  end

  def average
    sum = 0
    @scores.each {|i| sum += i }
    @result = sum/@scores.length
  end

  def letter_grade
    average
    if average >= 90
      letter = "A"
    elsif average >= 80
      letter = "B"
    elsif average >= 70
      letter = "C"
    elsif average >= 60
      letter = "D"
    else
      letter = "F"
    end
  end

  def linear_search(array, name)
     i = 0
     if array[i].first_name == name
       return i
     i += 1
     else -1
     end
  end


  # def binary_search(array, name)
  # index = 0
  #   if array.bsearch {|firstname| firstname == name  }
  #     return index
  #     index +=1
  #   else -1
  #   end
  # end


end

alex = Student.new({first_name: "Alex", scores:[100,100,100,0,100]})
john = Student.new({first_name: "John", scores:[65,80,100,80,72]})
hanna = Student.new({first_name: "Hanna", scores:[90,99,97,100,91]})
lisa = Student.new({first_name: "Lisa", scores:[12,0,35,55,50]})
bart = Student.new({first_name: "Bart", scores:[90,37,84,26,12]})

students = [alex, john, hanna, lisa, bart]




# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p students[0].linear_search(students, "Alex") == 0
p students[0].linear_search(students, "NOT A STUDENT") == -1


# Reflection

# What concepts did you review in this challenge?
# The concept of creating a class and methods, using instance method, enumerators and conditional statements.

# What is still confusing to you about Ruby?
# The initialize part of the class and the use of args and symbols here is still not clear to me. I'm also not 100% sure about linear and binary search, for what case each should be used for and why.

# What are you going to study to get more prepared for Phase 1?
# The syntax difference between ruby and javascript. Ruby classes and methods.