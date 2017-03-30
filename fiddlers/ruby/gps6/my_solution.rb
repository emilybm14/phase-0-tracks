# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# is pointing to a specific file within the same directory while require points to a file in a different directory
#
require_relative 'state_data'

class VirusPredictor

 def initialize(state_of_origin, population_density, population)
   @state = state_of_origin
   @population = population
   @population_density = population_density
 end
 # virus_effects predicts the predicted deaths and the speed of spread
 def virus_effects
   predicted_deaths
   speed_of_spread
 end

 private
#formula by population density that predicts # of deaths by state pop.
 def predicted_deaths
   # predicted deaths is solely based on population density
   # if @population_density >= 200
   #   number_of_deaths = (@population * 0.4).floor
   # elsif @population_density >= 150
   #   number_of_deaths = (@population * 0.3).floor
   # elsif @population_density >= 100
   #   number_of_deaths = (@population * 0.2).floor
   # elsif @population_density >= 50
   #   number_of_deaths = (@population * 0.1).floor
   # else
   #   number_of_deaths = (@population * 0.05).floor
   # end

 def predicted_deaths
   # predicted deaths is solely based on population density
   if @population_density >= 200
     num = 0.4
     # number_of_deaths = (@population * 0.4).floor
   elsif @population_density >= 150
     num = 0.3
   elsif @population_density >= 100
     num = 0.2
   elsif @population_density >= 50
     num = 0.1
   else
     num = 0.5
   end
   number_of_deaths = (@population * num + 1).floor

   print "#{@state} will lose #{number_of_deaths} people in this outbreak"

 end
 #formula by population density that predicts the rate of spread of virus by state pop.
 def speed_of_spread#in months
   # We are still perfecting our formula here. The speed is also affected
   # by additional factors we haven't added into this functionality.
   speed = 0.0

   if @population_density >= 200
     speed += 0.5
   elsif @population_density >= 150
     speed += 1
   elsif @population_density >= 100
     speed += 1.5
   elsif @population_density >= 50
     speed += 2
   else
     speed += 2.5
   end

   puts " and will spread across the state in #{speed} months.\n\n"

 end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, data|

 report = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
 report.virus_effects
end
#=======================================================================
# Reflection Section

# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The nested hash uses symbols unlike the overarching hash which declares keys with quatations and a 
# hashrocket.
# 
# What does require_relative do? How is it different from require?
# require_relative points directly to the reference file while require generally requires that file but
# doesnt tell you exactly where said file can be found. 
# 
# What are some ways to iterate through a hash?
# you can iterate with .each do statement like we did but you can also use each_pair, each_key or each_value
# 
# 
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# We were really stumped by this specific question, we saw that there were dupicates but it was not entirely 
# clear what exactly to do with them until Matthew gave us a hint. After that, I was easier to understand 
# the why you didnt need to call those parameters.
# 
# What concept did you most solidify in this challenge?
# I think that refactoring was a challenge because it wasnt that repetitive of a program.  




