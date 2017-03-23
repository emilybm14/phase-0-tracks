module Shout
  # we'll put some methods here soon, but this code is fine for now!
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!!" + " :)"
  end
end
#  use .self when you want to create a module and
#  EXTEND it to other classes.  
class Yell
	extend Shout
end


puts Shout.yell_angrily("NOOOO")
puts Shout.yell_happily("YEAAAA")



# the other way to do this is without the .self 
# is to INCLUDE in other classes

module Exclaim
 def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!!" + " :)"
  end
end

class Scream 
	include Exclaim
end

scream = Scream.new
puts scream.yell_angrily("AHHHHHH")
puts scream.yell_happily("YAYYYYYYY")


