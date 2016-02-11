# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#   errors.rb
# 2. What is the line number where the error occurs?
#   Shell says 170 but it's actually on line 15
# 3. What is the type of error message?
#   Syntax error
# 4. What additional information does the interpreter provide about this type of error?
#   Missing an end keyword
# 5. Where is the error in the code?
#   In the while loop after puts line.
# 6. Why did the interpreter give you this error?
#   Because the while statement hasn't been closed out with and end.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
#   35
# 2. What is the type of error message?
#   Undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
#   name error for object
# 4. Where is the error in the code?
#   Right in front of south_park
# 5. Why did the interpreter give you this error?
#   Because it needs to be declared as a variable

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
#   50
# 2. What is the type of error message?
#   undefined method
# 3. What additional information does the interpreter provide about this type of error?
#   no method error
# 4. Where is the error in the code?
#   Right in front of cartman()
# 5. Why did the interpreter give you this error?
#   Because it's missing the keyword def to declare it as a method

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#   65
# 2. What is the type of error message?
#   wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#   arguments error
# 4. Where is the error in the code?
#   Right after cartmans_phrase
# 5. Why did the interpreter give you this error?
#   Because the parentheses are missing for the methods, which is needed when an argument is involved.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
#   84
# 2. What is the type of error message?
#   wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#   arguments error
# 4. Where is the error in the code?
#   Right after cartman_says on line 88
# 5. Why did the interpreter give you this error?
#   The method is expecting arguments and none has been given when trying to run the method



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#   105
# 2. What is the type of error message?
#   wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#   arguments error
# 4. Where is the error in the code?
#   in the cartman_lie arguments line 109
# 5. Why did the interpreter give you this error?
#   It's expecting only two string arguments but it has been given more than amount of parameters declared.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#   124
# 2. What is the type of error message?
#   String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
#   (TypeError)
# 4. Where is the error in the code?
#   On the string
# 5. Why did the interpreter give you this error?
#   You can't multiply a number with the string starting with the number value.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 139
# 2. What is the type of error message?
#   divided by 0
# 3. What additional information does the interpreter provide about this type of error?
#   zero division error
# 4. Where is the error in the code?
#   In the equaled value
# 5. Why did the interpreter give you this error?
#   Dividing anything with 0 equals nil which means it's an empty value.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#   155
# 2. What is the type of error message?
#   Cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
#   load error
# 4. Where is the error in the code?
#   inbetween the variable and the string
# 5. Why did the interpreter give you this error?
#   It's missing the method to load the file


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# The String can't be coerced into Fixnum wasn't easy to read, it's a pretty vague comment.

# How did you figure out what the issue with the error was?
# I know from what I've learned that this means the string is trying to add with a non string object.

# Were you able to determine why each error message happened based on the code?
# Yes

# When you encounter errors in your future code, what process will you follow to help you debug?
# I will definitely take advantage to see what line number the error is happening at, that would be my first step. After that I'll read the message. If I still can't figure out the error, I would then comment some sections out to isolate and evaluate smaller sections of the code until I've narrowed it down to where it's happening. Last solution is to google the error.