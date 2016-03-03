// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Joshua Wu.

// Pseudocode
/*
Pseudocode

Input: Number
Output: String
Steps: define function add_comma
Turn number into string
Reverse the string
Turn string into an array
If the array position is mod3 =0 then print a comma and the number, else print the number

*/
// Initial Solution
var addComma = function(number){
  var toString = number.toString();
  var array = toString.split("").reverse();
  var answer = "";
  for (var i = 0; i < array.length; i++) {
    if (i === 0) {
      answer = array[i] + answer;
    }
     else if (i % 3 === 0) {
      answer =  array[i] + "," + answer ;
    } else
      answer = array[i] + answer;
  }
  console.log(answer);
}

addComma(12345678);

// Refactored Solution

function comma(x) {
console.log(x.toLocaleString())
}

comma(1232345678)


// Your Own Tests (OPTIONAL)




// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// The steps and approach were pretty similar to as if using Ruby, just a difference in syntax.

// What did you learn about iterating over arrays in JavaScript?
// I learned that you don't need a numerator in JS in order to loop through the array, you can use any loop or if statement with an additional variable that would represent the element in the array.

// What was different about solving this problem in JavaScript?
// The difference here was making sure the ending brackets lined up in order to avoid errors and using console.log to print anything out.

// What built-in methods did you find to incorporate in your refactored solution?
// We didn't find a new method to use in the refactored solution but for the initial solution we used .toString, .length, .split and .reverse methods.
