
class Santa
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		# @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", 
		# "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		# @age = 0
		# puts "Initializing Santa instance with #{@gender} #{@ethnicity} santa"
	end
	def speak(words)
		puts "Ho, ho, ho! Haaaappy holidays!" * words
		words
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
		cookie
	end
  
end

santa_description = [["agender", "black"],
	["female", "Latino"],
	["bigender", "white"],
	["male", "Japanese"],
	["female", "prefer not to say"],
	["gender fluid", "Mystical Creature (unicorn)"],
	["N/A", "N/A"]
	]
puts "iterating through santas... "

santa_description.each do |gender, ethnicity|
  	santa = Santa.new(gender, ethnicity)
  	puts "Creating #{@name} #{@ethnicity} santa"
	puts "there are #{santa_description.length} Santas in the Array"
	puts "--------------------------------"
end

# santa = Santa.new(gender, ethnicity)

# puts "Testing each santa instance in the array to make sure they can speak ..."
# santa.each do |words|
#   santa.speak(3)
# end

# puts "Testing each santa instance in the array to make sure they can eat ..."
# santa.each do |cookie|
#   santa.eat_milk_and_cookies("snickerdoodle")
# end

 # santa.eat_milk_and_cookies("snickerdoodle")
 # santa.speak(3)
