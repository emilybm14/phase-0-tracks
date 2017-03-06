# A Game Class

# "Welcome to the Game"
# INPUT: enter word
# TASK: get length of word, make board with "_" that corresponds to length
# RETURN: print “_” 

# INPUT: letters, word
# TASK: number of guesses should not exceed length of word, 
# if letter is in the word, it should be replace "_" on the board
# if letter is not in the word, "letter is not there, try again", add 1 to the index
# RETURN: print state of board

# INPUT: N/A
# TASK: if user guesses word before alloted chances, they win 
# if user does not guess word before alotted chances, they lose 
# RETURN: return win or loss message



# Business logic 
class Hangman 
	
	attr_accessor :answer, :letter

	def initialize(answer) 
		@answer = answer
		@board = ""
		@letter = ""
		@blanks = "_"
		
	end

	def create_board
		@board << @blanks * @answer.length
		p @board
	end

	def guess_letter
		# win = false
		guess_index = 1
		answer_arry = @answer.split('')
		until guess_index > @board.length
			puts "Player2 guess a letter"
			letter = gets.chomp.downcase
				if answer_arry.include?(letter)
					# letter.each do |letter|
					# 	board[letter] = answer[letter]
					# end
				else
					puts "#{letter} is not in the word"
				end
			guess_index += 1
			p guess_index
		end
	end
	# guess_index = 0 
	# win = false
	# @answer
	
	# 	while guess_index < @letters.length 
	# 	    if @answer.include?(@letter)
	# 	        @board[letter] = @answer[letter]
		        
	# 	        p @board
	# 	    else
	# 	        puts "Sorry word does not include that letter. please guess again"
	# 	        guess_index += 1
	# 	    end
	# 	end
	# end
end
# Start new instance 
game = Hangman.new("test")
game.create_board
game.guess_letter
# game.guess_letter("r")
#User Interface
# puts "Welcome to the word game!"
# puts "This is a two player game, player 1 please enter your name:"
# player1 = gets.chomp
# puts "player 2 please enter your name:"
# player2 = gets.chomp
# puts "#{player1} please select a word:"
# answer = gets.chomp

