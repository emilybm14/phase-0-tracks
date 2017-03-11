# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require relative points you to a file it compliments the require method
# use require relative when you want to point to something specific. require alone will 
# search through files to find the right source

require_relative 'state_data'

class VirusPredictor
# this will initialize the class 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density

  end
# it is running the predicted deaths & speed of spread methods. 
  def virus_effects 
    predicted_deaths
    speed_of_spread
  end

  private
# responsible for prediciting the number of deaths per state based 
# on the population and population density
  
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when (0...50)   
    num = 0.05 
    when (50...100)   
    num = 0.1
    when (100...150)  
    num = 0.2 
    when (150...200) 
    num = 0.3  
    else   
    num = 0.4   
    end
    
    number_of_deaths = (@population * num).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# responsible for using the population density for predicting the speed fo spread
# in each state

  def speed_of_spread #in months
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

STATE_DATA.each do |state, value|
  state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
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
# 
# 
# 
