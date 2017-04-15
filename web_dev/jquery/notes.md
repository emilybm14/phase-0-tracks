Goals
learn the basics & important concepts to understand
what is jquery 
how/ when do you use it

Methods
Start off researching the basics of what jQuery is and when to use it. As new questions come up, open separate tabs to figure out the definitions and how they fit into the jquery structure. 

look at interactive examples and try to write some code as new concepts come up using w3schools and other similar sites. 

HERE IS WHAT I LEARNED:
What is JQUERY? 
   jQuery is a fast, small, and feature-rich JavaScript library. It makes things like HTML document traversal and manipulation, event handling, animation, and Ajax much simpler with an easy-to-use API that works across a multitude of browsers.
   The ultimate goal is to minify the amount of code on your page by accessing a full library of tasks with a single line of code


BASIC CONCEPTS
   You need a basic understanding of CSS, HTML and JS to use

   AJAX: the method of exchanging data with a server, and updating parts of a web page – without reloading the entire page.


HOW/ WHEN DO YOU USE
   You will need to download the jQuery library in order to use it or include a jquery from a CDN (content delivery network)

   can be put into the page like this: 
   google CDN: <head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
   </head>

   microsoft CDN: <head>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.0.min.js"></script>
   </head>

SYNTAX 

The jQuery syntax is tailor-made for selecting HTML elements and performing some action on the element(s).

Basic syntax is: $(selector).action()

A $ sign to define/access jQuery
A (selector) to "query (or find)" HTML elements
A jQuery action() to be performed on the element(s)
Examples:

$(this).hide() - hides the current element.

$("p").hide() - hides all <p> elements.

$(".test").hide() - hides all elements with class="test".

$("#test").hide() - hides the element with id="test".

SOME BASICS
	Document Ready: it is common practice to have the methods inside of a .ready function. this is to prevent the actions from occurring on page load. 

	that would look like this: 
	$(document).ready(function(){

   	// jQuery methods go here...

	});






	


