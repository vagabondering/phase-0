# Leap Years

# I worked on this challenge [by myself, with: ].

# Your Solution Below

#take year input
puts "Please put a year to see if it's a leap year"
year = gets.to_i

#IF the year input is divisible by 4 or 400, leap year = true else false
def leap_year?(year)
  if year % 4 == 0
    true
  elsif year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    false
  end
end

p leap_year?(year)
#ELSE divisible by 100, leap year = false else true

