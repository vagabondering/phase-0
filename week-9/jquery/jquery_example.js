// U3.W9:JQuery


// I worked on this challenge [ with: Oscar Delgadillo ].
// This challenge took me [1.5] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body')

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
  $('body>h1').css({'color': 'red', 'border': 'solid', 'visibility': 'hidden'});
  $('body>div>h1').html("Rock Doves");
  //RELEASE 4: Event Listener
  // Add the code for the event listener here
    $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://us.123rf.com/450wm/insima/insima1305/insima130500011/19582501-blue-rock-pigeon-side-view-illustration-isolated-on-white-background.jpg?ver=6')
    //RELEASE 5: Experiment on your own
    $(this).css({'position': 'relative'})
    $('img').animate({left: '+=10px'},500);
     });
    $('img').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'imgs/devbootcamp-logo-new.png')
    });


})  // end of the document.ready function: do not remove or write DOM manipulation below this.


// What is jQuery?
// jQuery is an add on to JavaScript language where you can access and modify the HTML.

// What does jQuery do for you?
// It can do additonal tweaks to color and position or adding visual effects on it like animation or transitional effect.

// What did you learn about the DOM while working on this challenge?
// I learned how to specify which element to manipulate using a tag, and using a child tag of a parent to isolate the function from other tags with same name.