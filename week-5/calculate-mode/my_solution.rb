# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# Array of numbers and/or strings.

# What is the output? (i.e. What should the code return?)
# Returns a single array of the most frequent value

# What are the steps needed to solve the problem?
# Go through each element in the array, create a key and add a value of 1. Go next element, see if key exist already, if it matches then add value of 1 to the same key, otherwise create new key.

def mode(array)
 hash = {}
 array.each do |element|
   if hash.has_key?(element)
     hash[element] += 1
     else hash[element] = 1
   end
 end
return_array = []
high_count = 0
hash.each do |k, v|
 if v > high_count
   high_count = v
 end
end
hash.each do |k, v|
 if v == high_count
   return_array.push(k)
 end
end
p return_array
end

# 3. Refactored Solution




# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
# We decided to use both array and hash for the data structure. We used hash to turn each element to a key and its value to be how many of the elements there are in the array. If a dublicate element is found, the corresponding key value gets added. We then used an array to order the list and return the element.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? It was a little more successful in terms of being more organized and plannnig ahead.


# What issues/successes did you run into when translating your pseudocode to code? The success was being able to follow the first part of the pseudocode of creating the hash keys. We then had to improvise a little bit after to figure out how to get the highest value.


# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# We used .each method to go through each element in the array, which wasn't difficult but a little tricky to use.