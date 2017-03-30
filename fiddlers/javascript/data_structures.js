
// var colors = ["blue", "green", "red", "yellow"]
// var names = ["Ed", "Edd", "Eddy", "John"]

// colors.push("purple")
// names.push("Ted")

// console.log(colors)
// console.log(names)

// var list_of_horses = []
// for (var i = 0; i < colors.length; i++) {
//   var horse = ({name: names[i], color: colors[i]});
//   list_of_horses.push(horse)
// }

//  console.log(list_of_horses)



var car = {brand: 'Ford', 'year': 1993, is_used: true};

function Car(brand, year, is_used) {
	console.log("Our car:", this);
	this.brand = brand;
	this.year = year;
	this.is_used = is_used;
	this.run = function() { console.log("Engine turns on!"); };

console.log("CAR INITIALIZATION COMPLETE");
}
console.log("Let's buy a car ...");

var anothercar = new Car("Toyota", 2008, true);
console.log(anothercar);
console.log("Can this car run?");
anothercar.run();
console.log("----");

console.log("Let's buy another car ...");
var yetanothercar = new Car("Land Rover", 2017, false);
console.log(yetanothercar);
console.log("Can this car run?");
yetanothercar.run();
console.log("----")


// Release 3:
// to iterate through arrays you would use a for loop like we did on 
// line 12 to push each of the key: value pairs into an array for the
// list of horses.
// 
// the advantage is being able to create nested data structures and 
// use functions to iterate over them 
// 
// 
// 
// 
// 


