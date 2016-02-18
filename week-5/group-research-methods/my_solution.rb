# Research Methods

# I spent [2] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution - ALANA FARKAS
# Pseudocode: Method should take in an array, and return a new array containing words with specific letter.

def my_array_finding_method(array, letter)

array.select! { |element| element.class==String }
array.select! { |element| element.include?(letter)}
p array
end

#Pseudocode: For each value in the hash, if value == number push key into new array

def my_hash_finding_method(source, thing_to_find)

    name = Array.new
    source.each { |k, v|
      if v == thing_to_find
        name << k
      end }
  p name

end

# Identify and describe the Ruby method(s) you implemented.
# Teach your accountability group how to use the methods
# Share any tricks you used to find and decipher the Ruby Docs

# For my_array_finding_method, I iterated through the array first to select and keep only the elements that identify as Strings, using the .class method so that my array would now only contain String elements. I used a ! (bang) to destruct/save my array with these changes. Once my array had only homogenous elements (strings), I iterated over the array again using the .select! method and the .include? method so that my array would become an array of only elements that included a specific letter. This method took me down a long research rabbit hole. Before I changed the array to include only homogenous elements, I was getting a NoMethodError(FIXNUM) error message. I had to figure out that some methods, like .include cannot work on arrays with heterogenous elements. I gathered some of this information from "The Well-Grounded Rubyist" but you know how that book is...I had to google and use Ruby documentation to really figure out what was wrong.
#
#For my_hash_finding_method, I iterated through my hash's keys and values using the .each method, and for every value that was equal to the number input, the program pushed the key associated with that value into an empty array.



# Person 2 - KEVIN PERKINS
def my_array_modification_method!(source, thing_to_modify)
  source.collect! {|x|
    if x.is_a?(Integer)
      x += thing_to_modify
    else
      x
    end
    }
  return source
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each { |k, v|
     source[k] = (v + thing_to_modify)
  }
  return source
end

# Identify and describe the Ruby method(s) you implemented.
#I used collect on the array (which performs a block of code on each object in an array and creates a new array with the new objects in place)
#Collect is not a method for hashes, however, and I could not find a similar method.  Therefore I used the each method to perform a block for each pair in the hash.
#I did not find the ruby docs that difficult to navigate, actually.  I just searched the built-in methods for hashes and arrays to find relevant information.



# Person 3 - JASON ALLEN
# PSEUDOCODE: Define a method that receives an argument source array. Non-destructively alphanumerically sort the array in a new container object and return the alphanumerically sorted array.
def my_array_sorting_method(source)
  sorted_output = source.sort {|a,b| a.to_s <=> b.to_s }
  p sorted_output
end
# PSEUDOCODE: Define a method that receives an argument source hash. Non-destructively numerically sort the hash based on the value in each key/value pair in a new container object and return the numerically sorted hash.
def my_hash_sorting_method(source)
  sorted_hash_output = source.sort_by {|name, age| age }
  p sorted_hash_output
end

# Identify and describe the Ruby method(s) you implemented.
#  In the array method, I use a variable named `sorted_output` to contain the value of our source array `source` sorted by a comparison of contained items converted to string. This presents an alphanumeric sorting of all objects contained in the source array, returned to the console as `sorted_output`. This does not modify the source array.
#  In the hash method, I use a variable named `sorted_hash_output` to contain the value of our source hash `source`, sorted by the key/value pair `name,age`, sorted specifically by age values. This presents a sorted hash to the console when `sorted_hash_output` is returned. This does not modify the source hash.
#  RELEASE 2: TEACH OTHERS
# => In the non-destructive array method, you're telling the console to sort the array by using a comparator ( <=> ). |a,b| means for each `a` compared to `b`, it's taking a look at the values side by side, as converted to a string (*.to_s) to force alphabetical sorting (as there are integers present!).
# => The hash method was a bit trickier for me in research but actually pretty easy and concise as a solution! When working from the source hash, you are defining variable names for the key and value objects as |key, value| or in this case |name, age|, and telling Ruby to `.sort_by` the `age` objects in the hash.


# # Person 4 - Li-Lian Ku
# PSEUDOCODE: Go through each object in the array, convert it to string and look if it contains the given letter, if it does, remove the object from the array.
def my_array_deletion_method!(source, thing_to_delete)
  source.each {|word| string = word.to_s
    if string.include?(thing_to_delete) == true
    source.delete(string)
    p source
  end
  }
end

# PSEUDOCODE: In the hash, delete the key that's specified in the argument
def my_hash_deletion_method!(source, thing_to_delete)
    source.delete(thing_to_delete)
    p source
end

# # Identify and describe the Ruby method(s) you implemented.
# # For the array method, I went through each element in the list and converted each to string by using .to_s. I then use .include? to see if the string contains the letter specified in the argument. If it does contain the give letter, it'll evaluate to true and proceed to delete the string from the array using .delete method.
# # The same .delete method is applied here as the object to be removed is specified in the argument.
# #


# # Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #