# Calculate a Grade

# I worked on this challenge [by Li-Lian Ku, with: Sami Zhang ].

# Your Solution Below
puts "Enter the grade number"
grade = gets.to_i

def get_grade(grade)
  if grade >= 90
    puts "A"
  elsif grade >= 80
    puts "B"
  elsif grade >= 70
    puts "C"
  elsif grade >= 60
    puts "D"
  else
    puts "F"
  end
end

puts get_grade(grade)
