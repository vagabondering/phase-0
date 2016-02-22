# Pad an Array

# I worked on this challenge [by myself, with: Theo Paul ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? Each method accepts an array of integers and an optional argument for padding.
# What is the output? (i.e. What should the code return?) An array.
# What are the steps needed to solve the problem?
# Input array with minimum number and an optional padding argument.
# count up all elements inside the array using .length method
# set local variable equal to this number
# If local variable is less than minimum number,
# return default array value as nil for padding.
# until array length == to the minimum value
# if given padding argument, use that instead of nil.

# 1. Initial Solution

def pad!(array, min_size, value = nil)
#destructive

  length = array.length

  if length >= min_size
    return p array

  elsif min_size == 0
    p array = []
    return p array = []

  else

    while array.length < min_size
      if value != nil
        array << value
      else
        array << nil
      end
    end
    return p array
   end
end
pad!([1,2,3],5,"hello")

def pad(array, min_size, value = nil)
#non-destructive
  another_array = array
  length = array.length

  if length >= min_size
    return p another_array

  elsif min_size == 0
    p another_array = []
    return p another_array = []

  else

    new_array = Array.new
    array2 = array + new_array

    while array2.length < min_size
      if value != nil
        new_array << value
        array2 = array + new_array
      else
        new_array << nil
        array2 = array + new_array
      end
    end
    return p array2
   end
end

pad([], 0)

# 3. Refactored Solution



# 4. Reflection

# Were you successful in breaking the problem down into small steps?
# Yes

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# Pseudocoding gave me a good start but the final code is different then what I started coding initially with.


# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# It was not, the loop wasn't iterating correctly and creating a new array, it was still affecting the original array.


# When you refactored, did you find any existing methods in Ruby to clean up your code?
# I tried using .concat but it didn't give me exactly what I wanted.


# How readable is your solution? Did you and your pair choose descriptive variable names?
# I think we did.


# What is the difference between destructive and non-destructive methods in your own words?
# destructive is tweaking and returning the original argument whereas in non-destructive method, the original argument gets left alone and the method affects a new value of the original argument.