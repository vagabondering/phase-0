# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [1.5] hours on this challenge.

# 0. Pseudocode

# Input: A number of how many sides the dice has.
# Output: Random number from range of 1 through number of given side of dice.
# Steps:
# First create a dice
# Input a number of sides for the dice.
# Get a random number from 1 through the number of sides of the dice.

# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
      raise ArgumentError.new("The value can't be below 1")
    end
  end

  def sides
    @sides
  end

  def roll
    rand(1..sides)
  end
end

my_die = Die.new(6)
p my_die.roll

# 3. Refactored Solution







# 4. Reflection

# What is an ArgumentError and why would you use one?
# It's an error given when the wrong argument is used. It's useful to have one to clarify why the error is happening.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# The new ruby method used were random and raise, in which I was able to use both successfully.

# What is a Ruby class?
# A class is a blueprint with a set of instructions to build a specific type of object with initial values and implementations of behavior.

# Why would you use a Ruby class?
# I would use a class to create an object with certain functions or characteristics that can be used more than once and with different outcomes.

# What is the difference between a local variable and an instance variable?
# A local variable is a variable tied to be used in the method where it's defined. An instance variable is a variable that represent an object's state abd can be used across methods for any instance or object. The difference is in naming too with instance variable starting with a @ prefix.

# Where can an instance variable be used?
# It can be used across all methods.