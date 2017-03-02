
class Santa
	def initialize (ethnicity)
		puts "Initializing Santa instance ..."
		@gender = "male"
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", 
		"Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	def speak(words)
		puts "Ho, ho, ho! Haaaappy holidays!" * words
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
  
end

santa = Santa.new

santa.speak(3)
santa.eat_milk_and_cookies("snickerdoodle")

