// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Take care of a zombie baby, feed it with body parts and see if it'll survive to grow up!
// Goals: Grow a zombie baby
// Characters: An zombie baby
// Objects: Food.
// Functions: Time and Feed.

// Pseudocode
//Create 2 objects called baby and food, baby has the properties of age, hunger and newhunger and food with properties of hand, leg and head.
//Start with full levels of 10 for food, 0 for age and newHunger.
// Variable gameTime being the timeline, keeps going until baby age reaches 6, as time passes, the food level goes down.
// Prompt to ask if wanting to feed or do nothing to the baby
//Choose what kind of food, each has different amount of points to add to hunger level.
// If hunger level exceeds 15, the baby will die. Give warning when higher than 10.
// If hunger level reaches to 3 or below, give warning about malnourishment for low hunger level and abandonment for low care level, if reaches 0, baby dies.
// Player wins if he manages to raise the zombie baby till 6 years old.

// NOTE: This game works better with web interaction, if you do make sure to comment and uncomment the noted lines!

// Initial Code
var gameTime = true;

var baby = {
  age: 0,
  hunger: 10,
  newHunger: 0,
}

var food = {
  hand: 1,
  leg: 5,
  head: 10,
}

function time() {
  var age = 0
  var hunger = baby.hunger + baby.newHunger;
  while(gameTime) {
    if (age > 6) {
      console.log();
      console.log();
      console.log("Oh wait...Congratulations, you managed to raise a zombie baby!")
      gameTime = false;
    } else {
    console.log();
    console.log();
    console.log("The zombie baby is now " + baby.age + " years old");
    console.log("The zombie baby's hunger level is now " + (hunger -= 2));
      if (hunger > 10) {
        console.log("Careful, the zombie baby is becoming overweight, it'll die if the hunger level goes over 15");
      } else if (hunger >= 15) {
        console.log("Game Over! The zombie baby is dead from being overfed");
        gameTime = false;
      } else if (hunger <= 0) {
        console.log("Game Over! The zombie baby is dead from malnourishment");
        gameTime = false;
      } else {
        // Uncomment line below for web interaction
        // var action = prompt("Do you want to feed or do nothing for the baby?").toLowerCase();
        // comment the line below for web interaction
        console.log("Do you want to feed or do nothing for the zombie baby?");
        // comment the line below for web interaction
        var action = 'feed';
        if (action === 'feed') {
          function feed() {
          // Uncomment the line below for web interaction
          // var typeOfFood = prompt("Please choose between a hand, leg or head to feed me with").toLowerCase();
          // comment the line below for web interaction
          console.log("Please choose between 'hand', 'leg' or 'head' to feed me with")
          // comment the line below for web interaction
          var typeOfFood = 'hand';
          if (typeOfFood === 'hand') {
            baby.newHunger = hunger + food.hand;
            console.log("Hunger level is now increased to " + baby.newHunger);
          } else if (typeOfFood === 'leg') {
            baby.newHunger = hunger + food.leg;
            console.log("Hunger level is now increased to " + baby.newHunger);
          } else if (typeOfFood === 'head') {
            baby.newHunger =  hunger + food.head;
            console.log("Hunger level is now increased to " + baby.newHunger);
          } else {
            // Uncomment the line below for web interaction
            // var typeOfFood = prompt("Please choose between a hand, leg or head to feed me with").toLowerCase();
            // comment the line below for web interaction
            console.log("Please choose between 'hand', 'leg' or 'head' to feed me with")
          }
          return baby.newHunger;
        }
        baby.newHunger = feed();
        hunger = baby.newHunger;
        age = baby.age += 1;
        // Uncomment the line below for web interaction
        // var nextDay = prompt("Enter yes to keep going or other keys to exit").toLowerCase();
        // comment the line below for web interaction
        console.log("Enter 'yes' to keep going or other keys to exit")
        // comment the line below for web interaction
        var nextDay = 'yes'
        if (nextDay === 'yes' || nextDay === 'y') {
            console.log("The zombie will live for another year")
            continue;
          } else
            gameTime = false;
        } else {
          // Uncomment the line below for web interaction
          // confirm("The zombie baby wasn't fed, the hunger level remains unchanged")
          // comment the line below for web interaction
          console.log("The zombie baby wasn't fed, the hunger level remains unchanged")
          age = baby.age += 1;
        }
      }
    }
  }
}

time()

// Refactored Code






// Reflection
//
// What was the most difficult part of this challenge?
// Keeping things simple when there's not much restrictions involved in making the game. And making some functions work inside another function.

// What did you learn about creating objects and functions that interact with one another?
// I learned that it can look a little overwhelming to define bunch of functions inside another. However if you separate the functions out and only call its name inside a function, some of the variables have to be global variables and that can mess the loop up if it was depending on the variable when it was local.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work? This game code took longer than I hoped to be and ran out of time to look up for new methods for refactoring.

// How can you access and manipulate properties of objects?
// You can access a property of object by calling the object name and it's property with by object.property format.
// To manipulate it, you can assign it to a new value, object.property = new value.
