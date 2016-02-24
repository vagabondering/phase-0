# Your Names
# 1)Li-Lian Ku
# 2)Dave Kaiser

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_guests)
#takes two args: item and number of ingredients
#sets up default values for variables
  servings = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # error_counter = 3

  # IF item_to_make key value is nil, return our error
  if servings[item_to_make] == nil
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
# # sets number of items
#   servings.each do |food|
#     if servings[food] != servings[item_to_make]
#       error_counter -= 1
#     end
#   end
# #iterates over whole library of items, trackes error count
#   if error_counter > 0
#
#   end
# raises error if each item in lib fails an equality
  # serving_size = servings.values_at(item_to_make)[0]

  #if servings[item] > guests, tell us we have extra food
  #if = guests tell us it's spot on
  #if less than guests tell us we don't have enough food

  if servings[item_to_make] > num_of_guests
    "Calculations complete, you have #{servings[item_to_make] - num_of_guests} left over servings"
  elsif servings[item_to_make] == num_of_guests
    "Spot on!"
  else
    "You need to go the store, you need #{num_of_guests - servings[item_to_make]} servings of #{item_to_make}"

#   remaining_ingredients = num_of_guests % serving_size
# #accesses the serving size of the item
#   case remaining_ingredients
#   when 0
#     return "Calculations complete: Make #{num_of_guests / serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{num_of_guests / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end
#lets us know if (and how many) remaining ingredients we have


p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)


#  Reflection

# What did you learn about making code readable by working on this challenge?
# I learned how important the naming is overall in the code. Having a unsuitable name for ie arguments can really confuse the meaning of the method.

# Did you learn any new methods? What did you learn about them?
# I learned about the values_at method, that it returns an array containing the values of the given keys.

# What did you learn about accessing data in hashes?
# The way I proceeded in this exercise, I didn't feel I learned anything extra about accessing data in hashes compared to other exercises this week.

# What concepts were solidified when working through this challenge?
# I became more familiar using string interpolation with the expressions and argument. I'm also becoming a little more comfortable using hashes and its key.