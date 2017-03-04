# A Game Class

# Program asks user1 for a word
# User1 enters a word
# The word gets stored in an array 
# User2 is prompted to start guessing letters one at a time
# User2 enters letter
# Game checks if letter is in word
# If letter is in word it is placed 
# Current state of the word is returned
# User2 is prompted to enter another letter
# This repeats until all spaces are filled
# Game ends
Business logic 
class Word_game
	attr_reader :word_answer
	attr_accessor :letter_guess
	
	def initialize (word_answer)
		@word_answer = word_answer
		@letter_guess = letter_guess
	end

	def collect_use1_input
		@word_answer
	end

	def collect_letter_guess
		@letter_guess
	end


end
# Start new instance 
game = Word_game.new()

p game
