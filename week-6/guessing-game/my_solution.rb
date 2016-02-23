# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: Integer called guess
# Output: symbol :high, :correct or :low depending on the condition.
# Steps:
# for guess method:
# If guess > answer, return :high,
# if guess is == answer, return :correct,
# if guess < answer, return :low
# for solved method:
# Test to see if the guess is solved, return true if guess matches answer, otherwise false

# Initial Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @guess > @answer
      return p :high
    elsif @guess == @answer
      return p :correct
    else @guess < @answer
      return p :low
    end
  end

  def solved?
    if @guess == @answer
      return p true
    else
      return p false
    end
  end
end

game = GuessingGame.new(10)
game.solved?
game.guess(5)
game.guess(20)
game.solved?

game.guess(10)
game.solved?


# Refactored Solution






# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# I'm not sure I understand this question.

# When should you use instance variables? What do they do for you?
# I use an instance variable when I want to be able to use the same variables for more than one method.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# I use flow control to be able to get different scenarios depending on the condition. I would start with first scenario and if that passes the first condition, the first scenario returns. If the first condition isn't met, then it goes on to the next one and repeats the same action as the first scenario. It keeps going depending on how many conditional statements has been set.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# The benefits of using symbols is for the esthetic and faster use. Compared to using strings, using symbols is faster because Ruby doesn't have to do the step of turning the string into symbols.
# As for this exercise, I'm not sure why a symbol had to be used here but my guess is because a symbol remains as the same object by having same object_id each time it's executed, whereas a string's object_id changes everytime it's executed and I'm assuming that's needed for the solve method.