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


class Duck
	def initialize(name, age)
		@name = name
		@age = age
	end 

	def quack
		puts "#{@name} QUACKS"
	end

	def waddle
		puts "waddle"
	end

	def eats_bread(number_of_slices)
		puts "eating bread " * number_of_slices
	end
end

position = 0
array_of_instances = []

50.times do 
  array_of_instances << duck = Duck.new("Fred", 1)
end

# p array_of_instances
array_of_instances.each do |ducky|
  ducky.quack
  ducky.waddle
  ducky.eats_bread(2)
  # p position
  position += 1
  # p array_of_instances
end

p array_of_instances[6]


