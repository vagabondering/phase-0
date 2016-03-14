# PezDispenser Class from User Stories

# I worked on this challenge [by myself].
# I spent [2] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
# Input: array of flavors, output: amount of candies left in the inventory.
#
# Take array argument of flavors, find length of array to represent original amount of candy.
# Pez count method to calculate original amount minus eaten amount to get current amount. Use reduce enumerable to update array content
# See all pez method to show flavors left, print flavors array out.
# Get pez method to take a candy, subtract from current amount, print flavor by using random number to get array index. Update array inventory, if array content equals flavor removed, take that flavor out.
# Add pez method with flavor as argument, add to current amount of candy, push flavor argument onto the array.
#


# Initial Solution

class PezDispenser
# your code here!
  def initialize(flavors)
    @flavors = flavors
    @amount = @flavors.length
  end

  def pez_count
    @amount
  end

  def see_all_pez
    @flavors
  end

  def add_pez(flavor)
    @amount += 1
    @flavors << flavor
  end

  def get_pez
    @amount -= 1
    n = rand(@flavors.length)
    @flavors[n]
    @flavors.delete(@flavors[n])
  end
end

# Refactored Solution
class PezDispenser

  attr_reader :amount, :flavors

  def initialize(flavors)
    @flavors = flavors
    @amount = @flavors.length
  end

  def pez_count
    amount
  end

  def see_all_pez
    flavors
  end

  def add_pez(flavor)
    @amount += 1
    @flavors << flavor
  end

  def get_pez
    @amount -= 1
    n = rand(@flavors.length)
    @flavors[n]
    @flavors.delete(@flavors[n])
  end
end

# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

# Reflection

# What concepts did you review or learn in this challenge?
# This challenge was a nice review of working with an array, manipulating it by adding and subtracting the contents and printing it out.

# What is still confusing to you about Ruby?
# I tried some of the other challenges that involved having classes interacting with other classes, which was a little confusing to me in terms of knowing what methods should be in the class and which variables should be an attribute versus an argument.

# What are you going to study to get more prepared for Phase 1?
# More ruby, especially on enumerables, classes, methods and inheritance and getting more comfortable knowing the syntax difference compared to JavaScript.