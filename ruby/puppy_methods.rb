#  class Puppy

# def initialize
#   puts "Initializing new puppy instance..."
# end
#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#    toy
#   end
#   def dog_years (years)
#     years_on_earth = years.to_i * 7
#     puts "Your dog is #{years_on_earth} "
#     end
#   def speak(number_of_times)
   
#    # number_of_times.to_i.times do
#    puts "WOOF!" * number_of_times.to_i
#    # * number_of_times.to_i
#   end
#   def sneeze (number_of_sneezes)
#     puts "pshhhhs choo" * number_of_sneezes.to_i
#   end
#   def roll_over
#     puts "Roll Over"

# end

# end
# puppy = Puppy.new
# puppy.fetch("ball")
# puppy.speak(100)
# puppy.roll_over
# puppy.dog_years(3)
# puppy.sneeze(3)

#Release 2: Write your Own Class & Experiment

class Paintball_player

	def initialize
		puts "Initializing paintball player..."
	end

		def fire(number_of_shots)
			puts "Poppp!" * number_of_shots.to_i
		end

		def duck_for_cover(object)
			puts "Take cover and hide behind #{object}"
			object
		end

	def reload(pellets)
			puts "Add #{pellets} paintballs to hopper"
	end	
	
end

object_for_cover = ["fallen tree", "hollowed out car", "wall", "teammate"]


player_1 = Paintball_player.new

50.times do 
player_1.fire(40)
player_1.duck_for_cover(object_for_cover)
player_1.fire(5)
player_1.reload(45)

end





