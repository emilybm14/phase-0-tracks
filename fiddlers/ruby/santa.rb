class Santa
	attr_reader :age, :ethnicity
	attr_accessor :celebrate_birthday, :get_mad_at, :gender
	def initialize(gender, ethnicity)
		# puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak 
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def celebrate_birthday(years)
		@age + 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking.push(reindeer)
		p @reindeer_ranking

	end
end 

# Release 0
# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("snickerdoodle")

# Release 1
santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# p santas


example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# Release 2
santa = Santa.new(example_genders.sample, example_ethnicities.sample)
santa.celebrate_birthday(4)


5.times do 
	santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end

santas.each_with_index do |santa|
	santa.celebrate_birthday(@age = rand(1...140))
	santa.get_mad_at("Vixen")
	puts "This santa is a #{@age} year old #{santa.ethnicity} #{santa.gender}"
end









