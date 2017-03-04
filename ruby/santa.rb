
class Santa
	attr_reader :ethnicity, :age
	attr_accessor :gender, :reindeer_ranking
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", 
		"Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
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

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking.push(reindeer)
	end
#getter methods
	def gender
		@gender
	end

	# def ethnicity
	# 	@ethnicity
	# end
 #setter methods
 # 	def gender=(new_gender)
	# 	@gender = new_gender
	# end
end

# santa_description = [["agender", "black"],
# 	["female", "Latino"],
# 	["bigender", "white"],
# 	["male", "Japanese"],
# 	["female", "prefer not to say"],
# 	["gender fluid", "Mystical Creature (unicorn)"],
# 	["N/A", "N/A"]
# 	]
# puts "iterating through santas... "

# list_of_santas = []

# santa = Santa.new("gender", "ethnicity")

# santa_description.each {|description| list_of_santas << Santa.new(description[0], description[1])}

# list_of_santas.each do |santa|
#   	puts "This santa is #{santa.gender} #{santa.ethnicity} santa"
# 	# puts "there are #{santa.length} Santas in the Array"
# 	puts "--------------------------------"
# end

# puts "iterating through santas... "
# santas = []
gender_choices = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity_choices = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
# santas << Santa.new(example_genders[i], example_ethnicities[i])
	
# end
# santas.each do |santa|
# 	puts "This santa is #{santa.gender} #{santa.ethnicity} santa"
# 	puts "--------------------------------"
# end


# p santa.celebrate_birthday

# p santa.get_mad_at("Vixen")

santa_index = 0
while santa_index < 50
	new_santa = Santa.new(gender_choices.sample, ethnicity_choices.sample)
	r = Random.new.rand(140)
	r.times{new_santa.celebrate_birthday}
	puts "This santa is #{new_santa.gender} #{new_santa.ethnicity} santa and #{new_santa.age} years old."
	puts "--------------------------------"
	santa_index +=1
	p santa_index
end 

# puts "Testing each santa instance in the array to make sure they can speak ..."
# list_of_santas.each do |words|
#   santa.speak(3)
# end

# puts "Testing each santa instance in the array to make sure they can eat ..."
# santa_description.each do |cookie|
#   santa.eat_milk_and_cookies("snickerdoodle")
# end

 # santa.eat_milk_and_cookies("snickerdoodle")
 # santa.speak(3)
