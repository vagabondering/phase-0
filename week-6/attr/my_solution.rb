#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [2] hours on this challenge.

# Pseudocode

# Input: string name
# Output: String greeting to the name of the class.
# Steps:
# Create a class, NameData to initialize the name.
# A second class, Greetings will initialize the NameData class.
# A method in the Greetings class will put out a string message including the name class output.


class NameData

  attr_accessor :name

  def initialize
    @name = "Lilian"
  end

end

class Greetings

  def initialize
    @newdata = NameData.new
  end

  def hello
    puts "Hello " + @newdata.name.to_s + "! Great to see you today!"
  end
end

greet = Greetings.new
greet.hello



# Reflection

# Release 1

# What are these methods doing?
# These methods are instant variables of age, name and occupation. The change methods allow a new argument as new values for the methods.

# How are they modifying or returning the value of instance variables?
# They're modifying the methods by taking in an argument and returning the value by having the instant variables equalling to the argument.


# Release 2

# What changed between the last release and this release?
# The method, what_is_age wasn't needed anymore because of the addition of the  attr_reader: age, which returns the value outside the class without the need of a method.

# What was replaced?
# The method what_is_age.

# Is this code simpler than the last?
# It is simpler because one line can return the same output versus three lines needed in a method.


# Release 3

# What changed between the last release and this release?
# The attr_writer :age was added.

# What was replaced?
# It replaced the change_my_age method.

# Is this code simpler than the last?
# It is becuase again, it's only one versus three lines.


# What is a reader method?
# The attr_reader is a method that returns the object outside the class, it can be accessed but not changed. It's a way to keep that object private and untouched.
# In the code, it replaces the method of outputting the object.

# What is a writer method?
# Having the attr_writer means you can make changes to the object, the object is considered to be public.
# In the code, it replaces the method of assigning the object a given value, so the object value can be changed from the given argument.

# What do the attr methods do for you?
# The attr_accessor combines both writer and reader method so it allows you to set the object and then be able to make changes to the object.

# Should you always use an accessor to cover your bases? Why or why not?
# Depending on the situation, it can be convenient to use the accessor to save writing both reader and writer methods out. However always using the accessor means the object is always open to changes and that can cause some risks down the line, ie an unintentional change to the object. Also if the information need to be confidential then it needs to be a reader method to be kept private.

# What is confusing to you about these methods?
# After doing this exercise I don't find them as confusing anymore, it definitely helped me understand them.