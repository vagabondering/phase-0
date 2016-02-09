
#-What does puts do?
#Puts evaluates the code to nil and prints the output to the console.

#-What is an integer? What is a float?
#Integer is a whole number whereas float is a number with fractions/decimals.

#-What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
#An integer division only outputs a whole rounded number, which means it doesn't give an accurate result as a float would be, providing the decimals.

```ruby
day = 24
year = 365
hours_year = year * 24
decade = 10
hour = 60
minute_decade = decade * ((hour * day) * year)

print "There are "
print hours_year
puts " hours in a year"
print "There are "
print minute_decade
print " mintues in a decade"
```

https://github.com/vagabondering/phase-0/blob/master/week-4/defining-variables.rb