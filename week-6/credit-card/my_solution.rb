
# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with:Leo Kukhar ].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: 16 digits of numbers
# Output: true or false boolean
# Steps:
# Put input into an array
# Using numerator, find every other element and double the value from left to right.
# If numbers are double digit, separate them.
# Then sum all the numbers up
# If sum modulus by 10 is == 0 return true, else false.


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
class CreditCard

 def initialize(numbers)
   @numbers = numbers.to_s
   @array = @numbers.split("")
   if @numbers.size != 16
     raise ArgumentError.new("Number must have sixteen digits")
   end
   @valid = false
 end

 def convert_array_to_int
   @array.map! do |x|
     x.to_i
   end
 end

 def array_doubler
   @array = @array.map.with_index {|x,idx| idx % 2 == 0 ? x * 2 : x }
 end

 def array_splitter
   @array.map! {|x| x.to_s.split("")}.flatten!
 end

 def array_summer
   @array.inject(:+)
 end

 def check_card
   convert_array_to_int
   array_doubler
   array_splitter
   convert_array_to_int
   sum = array_summer
   @valid = true if sum % 10 == 0
   return @valid
 end
end
creditcard = CreditCard.new(1234516789012346)
p creditcard.convert_array_to_int
p creditcard.array_doubler
p creditcard.array_splitter
p creditcard.array_summer
# Reflection

# What was the most difficult part of this challenge for you and your pair?
# We had a very different pace and approach to coding so it was a bit of a challenge keeping track of each other's thoughts and ideas.
# As for the exercise, the whole thing was a challenge. Having to convert the input to several different kind of objects and then back to it was tricky, it got hard when trying to do a simple .to_a to a variable didn't work in one of the method.

# What new methods did you find to help you when you refactored?
# The inject method was a nice way to clean and simplify the code.

# What concepts or learnings were you able to solidify in this challenge?
# The concept of converting the object to the suitable format for the method to work, ie making the input into an array, splitting it, using arithmetics on it, then turning it into an array again, splittig it and summing it all up.