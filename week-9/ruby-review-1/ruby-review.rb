# Introduction to Inheritance

# I worked on this challenge [by myself].


# Pseudocode
# Create a class for Cohort, initialize with name,city, email_list and p0 startdate as arguments.
# Students starts as an empty array that gets filled with add_student method.
# Create a second class, LocalCohort to inerit the attributes name, email_list and p0 start date from the first class
# Students gathers list of student names from instances of each cohort as a class variable. The num_of_students is the same but gathers number of students. Use array length for number of students.
# add_student: take student name as input and append it to students array.
# remove student: take student name as input and delete it from students array.
# currently_in_phase: Case statement using immersive_date.
# graduated?: If immersive_date equals to or greater than graduation_date, return true, otherwise false.

# Initial Solution

class GlobalCohort

  require 'date'
  attr_accessor :name, :email_list, :students, :num_of_students, :p0_start_date

  def initialize(name, email_list)
    @name = name
    @email_list = email_list
    @p0_start_date = Date.new(2016,02,29)
    @students = []
    @num_of_students = 0
  end

  def add_student(student)
    @students << student
    @num_of_students += 1
  end

  def remove_student(student)
    @students.delete(student)
    @num_of_students -= 1
  end

  def currently_in_phase
    case immersive_start_date
    when Date.new(2016,02,29)
      puts "Phase 0"
    when Date.new(2016,03,21)
      puts "Phase 1"
    when Date.new(2016,04,18)
      puts "Phase 2"
    else
      puts "Phase 3"
    end
  end

  def graduated?
    if immersive_start_date >= graduation_date
      true
    else
      false
    end
  end

end

class LocalCohort < GlobalCohort

  attr_accessor :city, :immersive_start_date, :graduation_date

  def initialize(name, email_list, city)
    @name = name
    @email_list = email_list
    @city = city
    @immersive_start_date = Date.new(2016,03,21)
    @graduation_date = Date.new(2016,05,20)
    @p0_start_date = Date.new(2016,02,29)
    @students = []
    @num_of_students = 0
  end
end


DBC = GlobalCohort.new("DBC", "DBC@gmail.com")
SF_DBC = LocalCohort.new("SF_DBC", "SF_DBC@gmail.com", "SF")
Chicago_DBC = LocalCohort.new("Chicago_DBC", "Chicago_DBC@gmail.com", "Chicago")
NY_DBC = LocalCohort.new("NY_DBC", "NY_DBC@gmail.com", "NY")

SF_DBC.add_student("Sara")
SF_DBC.add_student("Tom")
SF_DBC.students
SF_DBC.num_of_students

SF_DBC.remove_student("Tom")
SF_DBC.students
SF_DBC.num_of_students

SF_DBC.immersive_start_date
SF_DBC.graduation_date
SF_DBC.p0_start_date
SF_DBC.currently_in_phase
SF_DBC.graduated?

# Refactored Solution





# Reflection

# What concepts did you review in this challenge?
# Creating a class, instance of a class and using methods through inheritance.

# What is still confusing to you about Ruby?
# I still don't feel completely competent using classes, instances of classes, class variables and inheritance, I'm hoping I will after having more practice with it. Also, I don't know when to use a lambda, proc or modulus compared to using a method.

# What are you going to study to get more prepared for Phase 1?
# Go over the basics Ruby as I've forgotten some parts already.