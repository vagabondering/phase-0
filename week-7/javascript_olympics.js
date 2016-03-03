// JavaScript Olympics

// I paired [by myself, with: Joshua Wu] on this challenge.

// This challenge took me [45min] hours.


// Warm Up




// Bulk Up

var win = function(array){
console.log(array[0] + " won the " + array[1]);
}

win(["Sarah Hughes","Ladies' Singles"])

// Jumble your words
var reverseString = function (string){
  var word = string.split('').reverse().join('');
  console.log(word)
}

reverseString("string")


// 2,4,6,8
var printEven = function(array){
  var evens = []
  for (var i = 0; i < array.length; i++){
    if( array[i] % 2 === 0){
      evens.push(array[i]);
    }
  }
  console.log(evens)

}

printEven([1,2,3,4,5])

// "We built this city"
function Athlete(){
  this.name = "Michael Phelps";
  this.age = 29;
  this.sport = "swimming";
  this.quote = "It's medicinal I swear!";
}


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// What JavaScript knowledge did you solidify in this challenge?
// I got a little more familiar with using an array in JS and solidifed looping through an array.

// What are constructor functions?
// Constructor function is another way of creating an object with some differences to the syntax. The obstructor function allows you to instantiate it into different independent objects that can be changed to if wanted without affecting other instances or the original object.

// How are constructors different from Ruby classes (in your research)?
// The syntax is different and constructors don't have variables that need to be initialized. Other than that, both can declare variables and excute functions/methods within.
