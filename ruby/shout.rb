# module Shout
#   def yell_angrily(words)
#     words + "!!!" + " :("

#   end

#   def yelling_happily(exclamation)
#   	"Yay!!! " + exclamation + "!!!!"
  	
#   end
# end

# class Yell 
#     extend Shout
# end 

# speak = Yell.new

# puts Yell.yell_angrily("NOOOO")
# puts Yell.yelling_happily("You Got it!")

with .self 
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("

  end

  def self.yelling_happily(exclamation)
  	"Yay!!! " + exclamation + "!!!!"
  	
  end
end

class Yell 
    extend Shout
end 

puts Shout.yell_angrily("NOOOO")
puts Shout.yelling_happily("You Got it!")
