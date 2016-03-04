# Virus Predictor

# I worked on this challenge [by myself, with: Danny Shyh Hwang].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
# Require relative links the my_solution.rb to the state_data.rb and enables use to take the state_of_origin, population_density, and population value from the "hashy hash". Rquire relative enables a ruby file to load another file relative from its current location.

class VirusPredictor
# starts the variables up by and initializes the arguments.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#This method calls both methods predicted_deaths and speed_of_spread.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# private (Under the hood) method to calculate predicted deaths of population, based on how big the density is.
  def predicted_deaths
    # predicted deaths is solely based on population density
    population = @population_density

    case population

    when population >= 200
      number_of_deaths = (@population * 0.4).floor
    when population >= 150
      number_of_deaths = (@population * 0.3).floor
    when population >= 100
      number_of_deaths = (@population * 0.2).floor
    when population >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Speed_of_spread methods calculates the spread of the virus depending on the population_density and the greater the density the faster the virus spreads.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    population = @population_density

    case population

    when population >= 200
      speed += 0.5
    when population >= 150
      speed += 1
    when population >= 100
      speed += 1.5
    when population >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end



#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each {|key, value| VirusPredictor.new(key, STATE_DATA[key][:population_density],STATE_DATA[key][:population]).virus_effects}

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# The difference is the key naming syntax, one hash uses a string as a key and the other uses a symbol and the way the value is applied, with the symbol key using : and string key using =>.

# What does require_relative do? How is it different from require?
# Require relative links the my_solution.rb to the state_data.rb and enables use to take the state_of_origin, population_density, and population value from the "hashy hash". Rquire relative enables a ruby file to load another file relative from its current location.

# What are some ways to iterate through a hash?
# A way to iterate through the hash is using a numerator like .each and setting the keys and values as elements to go through.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# The repeated use of the variables stood out to me and then realizing they were instances and didn't need to be set as arguments again in the class.

# What concept did you most solidify in this challenge?
# I feel a little more comfortable looping through the hash and printing the keys and values compared to before. I also see more of the purpose of using instance variables.