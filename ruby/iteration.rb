# Testing
# 3.times { |x| puts "I'm printing something from a block, and x is #{x}!" }

# 6.times { |block_count| puts "This block has already run #{block_count} times." }

# ["a","b","c","d"].each { |item| puts "Now the block parameter has a value of the current array item: #{item}" }

# 2.times { puts "This block works just fine even without a parameter." }

# dinos = ["T-rex", "brontosaurus", "pterodactyl"]
# number_of_dinos = dinos.length
# number_of_dinos.times { |i| puts dinos[i] }

# index = 0
# while index < number_of_dinos
#   puts dinos[index]
#   index += 1
# end

# Release 0

def farwell
	puts "Bye-bye"
	yield ("alligator")
	puts "In a while, crocodile"
end

farwell { |phrase| puts "see you later, #{phrase}" }

#Release 1

birds = ["ostrich", "emuu", "penguin", "kiwi"]

animals = {"bear" => "scary", "puppy" => "cuddly", "shark" => "deadly"}

# p birds
birds.each do |bird|
	puts "I dont think that #{bird} flies"
end
# p birds

birds.map! do |bird|
	puts "#{bird} cant fly"
	bird + " cant fly"
end

# p birds

p animals 
animals.each do |bear, is_scary|
	puts "scientists say that #{bear} is conclusively #{is_scary}"
end

p animals

#Release 2

numbers = [2, 55, 3, 2, 67, 34]

word_list = {"yellow"=> "adj", "run" => "vrb", "loud" => "adj", "swim" => "vrb"}

p numbers
numbers.delete_if { |number| number > 30 }
p numbers

p word_list
word_list.delete_if { |word, word_type| word_type == "adj"}
p word_list

numbers = [2, 55, 3, 2, 67, 34]

word_list = {"yellow"=> "adj", "run" => "vrb", "loud" => "adj", "swim" => "vrb"}

p numbers
numbers.keep_if { |number| number > 30 }
p numbers

p word_list
word_list.keep_if { |word, word_type| word_type == "adj"}
p word_list

numbers = [2, 55, 3, 2, 67, 34]

word_list = {"yellow"=> "adj", "run" => "vrb", "loud" => "adj", "swim" => "vrb"}

p numbers
p numbers.fetch(2)
p numbers

p word_list
p word_list.assoc("swim")
p word_list

numbers = [2, 55, 3, 2, 67, 34]

word_list = {"yellow"=> "adj", "run" => "vrb", "loud" => "adj", "swim" => "vrb"}

p numbers
new_array = numbers.take_while { |number| number < 60 }
p numbers
p new_array

p word_list
new_hash = word_list.reject { |word, word_type| word_type == "adj"}
p word_list
p new_hash