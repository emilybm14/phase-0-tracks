# with .self 
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



module Shout
  def yell_angrily(words)
    words + "!!!" + " :("

  end

  def yelling_happily(exclamation)
  	"Yay!!! " + exclamation + "!!!!"
  	
  end
end

class Yell 
  include Shout
end 

class Exclaim
	include Shout
end



yell = Yell.new
puts yell.yell_angrily("NOOOO")

exclaim = Exclaim.new
puts exclaim.yelling_happily("You did it! You are amazing!")
