# Numbers to Commas Solo Challenge

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Input is a positive integer
# What is the output? (i.e. What should the code return?) The output is the string of the number.
# What are the steps needed to solve the problem?
# Find the length of the integer, if it's 3 or less print the output.
# If it's more than 3 but less than 4, print the number as string with a comma added between first string number and the rest.
# If it's more than 4, add two commas to the string, between first string and inbetween 4th and 5th string. Print the output

# 1. Initial Solution
def separate_comma(number)
  if number < 0
    number *= -1
  end
string = number.to_s
  if string.length <=3
    p string
  elsif string.length == 4
    p string[0] + "," + string[1..3]
  elsif string.length == 5
    p string[0..1] + "," + string[2..4]
  elsif string.length == 6
    p string[0..2] + "," + string[3..5]
  elsif string.length == 7
    p string[0] + "," + string[1..3] + "," + string[4..6]
  elsif string.length == 8
    p string[0..1] + "," + string[2..4] + "," + string[5..7]
  end
end

# 2. Refactored Solution




# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# I broke it down to using length for the string to figure the if condition out.

# Was your pseudocode effective in helping you build a successful initial solution?
# Yes it was a good way for me to break the steps down and plan better.


# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?


# How did you initially iterate through the data structure?


# Do you feel your refactored solution is more readable than your initial solution? Why?
