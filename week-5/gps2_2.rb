# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
 # call the method food_list
 # set default quantity (quantity = 0)
 # creat a hash, where key is item and value is quantity
 # print the list to the console [can you use one of your other methods here?] - use print method for this step
# output: [what data type goes here, array or hash?] - hash, a list in the form of strings

def food_list
    list = Hash.new
    list ["carrots"] = 0
    list ["apples"] = 0
    list ["pizza"] = 0
    list ["cereal"] = 0
    list
end
p food_list


# Method to add an item to a list
# input: item name and optional quantity
# steps: create add_item method, add items to list
# output: new item with quantiy

def add_item(list, item, quant)
  list[item] = quant
end

#p add_item("item", 1)

# Method to remove an item from the list
# input: item to delete
# steps: using hash delete method to remove an item
# output: new list without the items that were removed

def delete_item(list, item)
    del_list = list.delete(item)
end

# Method to update the quantity of an item
# input: take new value for specified key
# steps: Input a value and assign that to the specified key
# output: item with new quantity

def update_quantity(list, item, quant)
 list[item] = quant
end

# Method to print a list and make it look pretty
# input: list of hash we want to print
# steps: print keys as strings with corresponding value
# output: keys as strings and their quantity

def print_list(list)
    list.each do |item, quantity| puts "#{item}: #{quantity}"

    end
end

list = food_list
p add_item(list, "Lemonade", 2)
p add_item(list, "Tomatoes", 3)
p add_item(list, "Onions", 1)
p add_item(list, "Ice Cream", 4)
p delete_item(list, "Lemonade")
p update_quantity(list, "Ice Cream", 1)
print_list(list)


# What did you learn about pseudocode from working on this challenge?
# I learned how helpful it is to pseudocode tp help getting started and get an overall idea of the whole project.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
# We purely used hash only because of the value tied to the key.

# What does a method return?
# A method returns the result of the action applied to the given argument/object.

# What kind of things can you pass into methods as arguments?
# It can be anything, string, integer, float, array or hash.

# How can you pass information between methods?
# You can pass information by using the same argument for the methods.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# What were solidified was the concept of passing information between methods, how to work more in-depth with a hash and printing the output of the method. I don't find any concepts here confusing so far.
