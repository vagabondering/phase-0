# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:2
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}
p hash[:outer][:inner]["almost"][3]
# attempts:1
# ============================================================



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:1
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]


number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|inner| inner+5 }
  else
    element + 5
  end
end
p number_array
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |element|
 if element.kind_of?(Array)
   element.map! do |inner|
     if inner.kind_of?(Array)
       inner.map! {|inner| inner << "ly"}
     else
       inner << "ly"
     end
   end
  else
    element << "ly"
  end
end
p startup_names


# Reflect

# What are some general rules you can apply to nested arrays?
# You can have as many nested arrays within an array.
# In order to access to each element in a nested array, you need to test to see if the element is an array by using ie an if statement and then have another loop in that array to access the nested elements.


# What are some ways you can iterate over nested arrays?
# You can iterate over the nested arrays using an enumerator, such as each, map or collect. To access another array in the array, you can do an if statement for the element that runs another enumerator block if the element is an array. You can repeate this loop for another level of nested array.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# We stuck to the same method of using an enumerator and then an if statement because we wanted to become more familiar using this setup and it got tricky when another of level of array was implemented but we figured it out.