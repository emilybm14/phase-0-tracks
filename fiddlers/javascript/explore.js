// input string
// take letters and create a while loop
// starting at the back of the string for each letter and push 

var str = "hello"

function reverse(str){
rev_str = ""
var length = true

if (length){for (var i = (str.length - 1); i >= 0; i--) {
		rev_str += str[i]
	};
	return rev_str};

}	

console.log(reverse("hello"))

console.log(reverse("reverse"))

