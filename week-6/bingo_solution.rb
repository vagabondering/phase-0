# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [5] hours on this challenge.


# Release 0: Pseudocode
# Outline:


# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Create an array for bingo individual string letters and use sample to generate random letter from the array.
  # use rand method to generate number from range based on letter.

# Check the called column for the number called.
  # generate the letter, check the array index number based on letter and search through each array at that index number.

  # If the value in the array equals the generated number, replace with x string.

# Display a column to the console
  # p array with index of its letter

# Display the board to the console (prettily)
  # Print the board out with the existing numbers, replace the number with 'X' if it matches the chosen number

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    letters = ['B', 'I', 'N', 'G', 'O']
    @letter = letters.sample
    if @letter == 'B'
      @chosen_number = rand(1-15)
    elsif @letter == 'I'
      @chosen_number = rand(16-30)
    elsif @letter == 'N'
      @chosen_number = rand(31-45)
    elsif @letter == 'G'
      @chosen_number = rand(46-60)
    else @letter == 'O'
      @chosen_number = rand(61-75)
    end
    p "Chosen number is #{@letter}#{@chosen_number}"
  end

  def check
    column = 0

    if @letter == 'B'
      column = 0
    end

    if @letter == 'I'
      column = 1
    end

    if @letter == 'N'
      column = 2
    end

    if @letter == 'G'
      column = 3
    end

    if @letter == 'O'
      column = 4
    end

  @new_array = []

    row = 0
    until row == 5 do
       @number = @bingo_board[row][column]
        if @number == @chosen_number
          @match = @number.to_s.replace('X')
          p "#{@letter}#{@chosen_number} is a match!"
          break
        else
          @number
        end
          row +=1
      end
    end

def display
  new_array = []
  index = 0
  until index == 5 do
    new = @bingo_board[index][0..4]
    new.each {|n|
      if n == @chosen_number
        x = n.to_s.replace(@match)
        new_array << x
      else
        new_array << n
      end
       }
      index +=1
    end
    row_array = new_array.each_slice(5).to_a
    p row_array[0]
    p row_array[1]
    p row_array[2]
    p row_array[3]
    p row_array[4]
end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check
new_game.display

#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# The pseudocoding part wasn't too challening, I had a brief idea what I wanted to start with.

# What are the benefits of using a class for this challenge?
# The benefit is to bundle this whole thing into one so it looks cleaner and more organized.

# How can you access coordinates in a nested array?
# You have to set the index in a square bracket first for the outer array, and then another bracket with index number to enter another level of array inside the outer array. Example:
# Array = [1, [2, [3, 4]]]
# Accessing the first array, Array[0] gives you "1,[2, [3, 4]]", which has two arrays of 1 and [2,[3, 4]]. If we want 2 value, we'd access it by Array[0][0]. Array[0][1] gives you the value [3, 4], because it's the second value in the array. If we want 3, we'd access it by Array[0][1][0], whereas Array[0][1][1] would give us 4.

# What methods did you use to access and modify the array?
# I used the index number and numerator to modify the array, incrementing the index number to create a loop to go through each array in side the main array.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# .kind_of? method checks to see what kind of object the object is, whether if it's an array, variable or integer and it's good to use for conditions based on type of objects.

# How did you determine what should be an instance variable versus a local variable?
# I chose an instance variable when it had to be used in more than one method. If the variable was only going to be used within the same method where it was declared, then I would make it local.

# What do you feel is most improved in your refactored solution?
# I tend to be bad at keeping the original code and showing the improvments but during the process of refactoring I improved on avoiding repitions and trying to see where short cuts can be created.
