console.log("The script is running!")

var photo = document.getElementById("moon-boots");
photo.style.border = "5px solid hotpink";

function fontchange() {
var product = document.getElementById("our-product");
product.style.fontFamily= "impact, Charcoal, sans-serif";
}



photo.addEventListener("click", fontchange)