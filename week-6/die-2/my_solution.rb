# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [.5] hours on this challenge.

# Pseudocode

# Input: Array of strings
# Output: Randomly return one of the strings
# Steps:
# If string array is empty, return argument error
# else:
# split the strings up, use sample method to randomly choose element and print the output for die roll method.


# Initial Solution

class Die
  def initialize(labels)
    @sides = labels
    if @sides == []
      raise ArgumentError.new("The array is empty")
    end
  end

  def sides
    @sides.length
  end

  def roll
    @sides.sample
  end
end

my_die = Die.new(['A', 'B', 'C', 'D', 'E'])
p my_die.sides
p my_die.roll

# Refactored Solution








# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# The main difference was the input and working with array of strings instead of an integer. The logic was slightly different since the output was different as well so instead of using rand method, sample method was used for roll method, as well as .length for the side method.

# What does this exercise teach you about making code that is easily changeable or modifiable?
# It taught me how easy it is to take an existing class and changing it a bit to produce a different object.

# What new methods did you learn when working on this challenge, if any?
# Using the method sample was new to me, I now learned to how to randomly choose a string from an array.

# What concepts about classes were you able to solidify in this challenge?
# I felt I learned to be more comfortable creating a class and its structure and methods and executing those methods.