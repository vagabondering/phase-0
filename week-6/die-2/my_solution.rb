# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

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