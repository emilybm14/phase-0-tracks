// RELEASE 0: FIND THE LONGEST WORD
// Take in an string of words
// split words into an array ["long phrase","longest phrase","longer phrase"]
// for each word check the legnth 
// return the number of characters in each word
// return the longest word
// console.log("The length of the array is " + longest_word.length);

function longest_word(array) {
var array = ["long phrase","longest phrase","longer phrase"];
var word_length = 0;
var longest_word = " ";

for (var i = 0; i < array.length; i++) {
    if (array[i].length > word_length) {
    word_length = array[i].length;
    longest_word = array[i];
    } 
};
console.log(longest_word)
}




// RELEASE 1: FIND KEY-VALUE MATCH
//  - create key:value pairs 
//  - bring them into the function as comparable objects
// - separate keys from values 
//  - if any or the same = correct 
//  - if not try aagin. 

// function find_matching_keys(set_1, set_2) {
var obj1 = {name: "Steven", age: 54};
var obj2 = {name: "Tamir", age: 54};

JSON.stringify(obj1) === JSON.stringify(obj2)

function compareKeys(a, b) {
  var aKeys = Object.keys(a).sort();
  var bKeys = Object.keys(b).sort();
  return JSON.stringify(aKeys) === JSON.stringify(bKeys);
}

// }

function compareObject(obj1, obj2){
	JSON.stringify(obj1) === JSON.stringify(obj2)
	for(var p in obj1){
		if(obj1[p] !== obj2[p]){
			console.log("no matching values");
		}
	}
	for(var p in obj2){
		if(obj1[p] !== obj2[p]){
			console.log("no matching values");
		}
	};
	console.log("there are matching value");
		
}

// RELEASE 2: RANDOM GEN
// take in integer
// set up empty string for random set of characters
// set the length to equal the integer  passed in
// generat e

function random_gen(integer){
	var rand_str = " "
	rand_str.length = integer
	var possible = "abcdefghijklmnopqrstuvwxyz";
	for( var i=0; i < 10; i++ )
        rand_str += possible.charAt(Math.floor(Math.random() * rand_str.length));

    console.log(rand_str);

}


// DRIVER CODE: 
compareObject(['{name: "Steven", age: 54}'],['{name: "Tamir", age: 54}']);
longest_word(["long phrase","longest phrase","longer phrase"]);
random_gen(5)
// find_matching_keys(['{name: "Steven", age: 54}'],['{name: "Tamir", age: 54}'])
