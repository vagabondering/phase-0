// Grocery list

// Pseudocode

// Create an object as the list with some existing items as object properties.
// Have a function that adds an item, as arguments takes an item, a list and quantity. Assign the item of the list to equal the quantity.
// Remove function takes the item and list as arguments and deletes the specified item from the list.
// Update quantity function takes a list, item and quantity as arguments. The nested item of the list equals to a new quantity.
// Print function prints the list out with a for loop to print each item and value out with string sentence.

var groceryList = {
};

groceryList.Carrots = 0;
groceryList.Apples = 0;
groceryList.Pizza = 0;
groceryList.Cereal = 0;


function addList(list, item, quantity) {
  list[item] = quantity;
}

function deleteItem(list, item) {
  delete list[item];
}

function updateQuantity(list, item, new_quantity) {
  list[item] = new_quantity;
}

function printList(list) {
  for (var item in list) {
  console.log("You have " + item + " with a quantity of " + list[item]);
  }
}


addList(groceryList, "Lemonade", 2);
addList(groceryList, "Tomatoes", 3);
addList(groceryList, "Onions", 1);
addList(groceryList, "Ice Cream", 4);
deleteItem(groceryList, "Lemonade");
updateQuantity(groceryList, "Ice Cream", 1);
printList(groceryList);


// Refactor:

var groceryList = {
  Carrots: 0,
  Apples: 0,
  Pizza: 0,
  Cereal: 0
};

function addList(list, item, quantity) {
  list[item] = quantity;
}

function deleteItem(list, item) {
  delete list[item];
}

function updateQuantity(list, item, new_quantity) {
  list[item] = new_quantity;
}

function printList(list) {
  for (var item in list) {
  console.log("You have " + item + " with a quantity of " + list[item]);
  }
}


addList(groceryList, "Lemonade", 2);
addList(groceryList, "Tomatoes", 3);
addList(groceryList, "Onions", 1);
addList(groceryList, "Ice Cream", 4);
deleteItem(groceryList, "Lemonade");
updateQuantity(groceryList, "Ice Cream", 1);
printList(groceryList);




// Reflection:
// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// Manipulating an object list by adding and deleting items, changing the value of the property and iterating and printing items of the object list.

// What was the most difficult part of this challenge?
// Writing the coding from memory without looking at notes, which I ended up having to do.

// Did an array or object make more sense to use and why?
// I felt an object made more sense because the item had a quantity attribute associated with it so creating an object allows the object to have a property, which would be the quantity in this case.