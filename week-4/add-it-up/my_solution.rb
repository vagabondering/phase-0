# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by Li-Lian Ku, with: Emily Mosowski ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers
# Output: sum of arrays numbers
# Steps to solve the problem.


# 1. total initial solution
# get array numbers, convert to integers, add them together

def total(array)
  sum = 0
  array.each {|array| sum+=array }
  p sum
end
total([1,2,3,4,5,5,7])
total([4,4,5,5,6,6,6,7])


# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: strings
# Output: combination of strings
# Steps to solve the problem.
# input of strings
#
# sum the strings together

# 5. sentence_maker initial solution

def sentence_maker(string)
  sentence = string[1..5].join(' ') + '.'
  p string[0].capitalize + ' ' + sentence
end

sentence_maker(["all", "my", "socks", "are", "dirty"])

# 6. sentence_maker refactored solution