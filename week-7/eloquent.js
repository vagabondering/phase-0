// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var question = prompt ("What's your favorite food"){
return "Hey! That's my favorite too!";
};
console.log(question);



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// FizzBuzz
// get number from 1 to 100.
// if number % 3 === 0, print "Fizz"
// elsif number % 5 === 0, print "Buzz"
// elsif number % 3 === 0 && number % 5 === 0, print "FizzBuzz"
// else print number

var num;
for (num = 0; num <= 100; num++) {
  if (num % 15 === 0) {
  console.log("Fizz");
    continue;
}; if (num % 3 === 0) {
  console.log("Buzz");
    continue;
}; if (num % 5 === 0) {
  console.log("FizzBuzz");
    continue;
};
console.log(num);
}


// Functions

// Complete the `minimum` exercise.

function minimum(a,b){
  return Math.min(a,b);
};

console.log(minimum(10,8))


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Lilian",
  age: 33,
  favoriteFoods: ["sushi", "thai", "french"],
  quirk: "science geek"
};
console.log(me)
