# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.
a = "iNvEsTiGaTiOn".swapcase
p a
# => “InVeStIgAtIoN”

b = "zom".insert(2, 'o')
p b
# => “zoom”

c = "enhance".center(4)
p c
# => "    enhance    "

d = "Stop! Youre under arrest!".upcase
p d
# => "STOP! YOU’RE UNDER ARREST!"

e = "the usual".replace
p e
#=> "the usual suspects"

f = " suspects".insert(0, "The Usual")
p f
# => "the usual suspects"

g = "The case of the disappearing last letter".chop
p g
# => "The case of the disappearing last lette"

h = "The mystery of the missing first letter"[1..40]
p h 
# => "he mystery of the missing first letter"

i = "Elementary,    my   dear        Watson!".squeeze(' ')
p i
# => "Elementary, my dear Watson!"

j = "z".codepoints 
p j
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

k = "How many times does the letter 'a' appear in this string?".count "a"
p k

# => 4