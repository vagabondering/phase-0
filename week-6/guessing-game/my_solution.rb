# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Integer called guess
# Output: symbol :high, :correct or :low depending on the condition.
# Steps:
# for guess method:
# If guess > answer, return :high,
# if guess is == answer, return :correct,
# if guess < answer, return :low
# for solved method:
# find a way to get latest correct answer, return true otherwise false

# Initial Solution

class GuessingGame

  def initialize(answer)
    # @guess = guess
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


# When should you use instance variables? What do they do for you?


# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?


# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
