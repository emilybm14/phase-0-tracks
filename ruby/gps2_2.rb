
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# list_input = "carrots apples cereal pizza"
# list_input.split(' ')
# steps: 
  # take in the list and split into an array of several strings
  # set default quantity
  # iterate through each item and quantity pushing item, quantity into the hash
  # print the list to the console [can you use one of your other methods here?]
# output: Hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: identify the list, set the item name as the key and the quatity as the value and push to the list 
# output: p the list to confirm it was added

# Method to remove an item from the list
# input: list, key (item_name)
# steps: identify the index position and delete both the key(item) and value (quantity) from the list
# output: P the list to make sure item was deleted

# Method to update the quantity of an item
# input: list, item, new quantity
# steps: identity the list, find the key in the list(item) and replace the value qith new quantity
# output: P the list to confirm the quantity was updated

# Method to print a list and make it look pretty
# input: List
# steps: iterate through the list adding the key (item) and its value (quantity) into a puts statement
# output: a pretty list for the grocery store

# Business Logic
DEFAULT_QUANTITY = 1
def create_list(list)
	quantity = 1
	items = list.split(' ')
	grocery_list = { }

	items.each do |item|
		grocery_list[item] = quantity
	end
	grocery_list
end

def add_item(grocery_list, item, quantity=1)
	grocery_list[item] = quantity
	grocery_list
end

def delete_item(grocery_list, item)
	grocery_list.delete(item)
	grocery_list
end

def update_quantity(grocery_list, item, new_quanitity)
	grocery_list[item] = new_quanitity
	grocery_list
end

def print_list(grocery_list)
	puts "This is your grocery list"
	grocery_list.each do |item, quantity|
		puts "You want #{quantity} #{item}"
	end
end

# Testing the methods
p create_list("carrots apples cereal pizza")
grocery_list = create_list("carrots apples cereal pizza")

p add_item(grocery_list, "lemonade", 2)
p add_item(grocery_list, "Tomatoes", 3)
p add_item(grocery_list, "Onions")
p add_item(grocery_list, "Ice Cream", 4)
p delete_item(grocery_list, "lemonade")
p update_quantity(grocery_list, "Ice Cream", 1)
print_list(grocery_list)

# Reflection
# What did you learn about pseudocode from working on this challenge?
# 	The more specific you are about what you need, what you want to do and what you 
# 	output the easier it is to actually write the code.

# What are the tradeoffs of using arrays and hashes for this challenge?
	# So the array allows you to to simplify your code only needing to call the Key 
	# while using arrays would force you to consistently be matching indexes to pull 
	# in the variables

# What does a method return?
	# it returns the last outout

# What kind of things can you pass into methods as arguments?
	# strings, integers

# How can you pass information between methods?
	# by having constants outside the method. returning the method and then 
	# assigning it to a variables

# What concepts were solidified in this challenge, and what concepts are still confusing?
	# the single responsibility was solidified as well as calling of methods and 
	# how to assign variables.  


