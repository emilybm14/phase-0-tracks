# Release 0 -------------
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # take in string, split string
  # place into hash (key will be item, value will be quantity)
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash of items and quantities

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: take in the item and quantity, if none provided default to 1
# push new item & quantity into the hash
# output: printing the hash of the items and quantity 

# Method to remove an item from the list
# input: item 
# steps: take in item, delete from list 
# output: printing the modified hash

# Method to update the quantity of an item
# input: item, new quantity
# steps: take in item, locate in the hash, push new quantity
# output: printing the modified hash 

# Method to print a list and make it look pretty
# input: hash(grocery list) 
# steps: iterate over the hash with a puts statement making it look pretty 
# output: single string for each item 


# Release 1 ------------
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
	update_quantity(grocery_list, item, quantity)
end

def remove_item(grocery_list, item)
	grocery_list.delete(item)
	grocery_list
end

def update_quantity(grocery_list, item, quantity)
	grocery_list[item] = quantity
	grocery_list
end

def print_pretty(grocery_list)
	puts "Grocery List"
	grocery_list.each do |item, quantity|
		puts "#{quantity} #{item}" 
	end
end

grocery_list = create_list("carrots apples cereal pizza")
grocery_list = add_item(grocery_list, "tomatoes")
grocery_list = remove_item(grocery_list, "apples")
grocery_list = update_quantity(grocery_list, "carrots", 7)
print_pretty(grocery_list)

# Release 3 -----
# What did you learn about pseudocode from working on this challenge?
# the clearer and more concise that you make the pseudocode the easier it is to write the methods


# What are the tradeoffs of using arrays and hashes for this challenge?
# if you use a hash you can put all of the information in one data set, and if you 
# 	us arrays, you have to run it through two data sets. The tradeoff with using a has over 
# 	two arrays is that you can associate the data in the list rather than matching 
# 	the arrays by index position. 

# What does a method return?
# the last piece of data run 

# What kind of things can you pass into methods as arguments?
# other methods, string, integers, boolean

# How can you pass information between methods?
# you can pass it through parameters in driver code or you can call a method from another method

# What concepts were solidified in this challenge, and what concepts are still confusing?
# using iteration and writing pseudocode

