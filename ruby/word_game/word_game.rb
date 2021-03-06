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
	
	attr_accessor :answer, :letter, :guesses

	def initialize(answer) 
		@answer = answer
		@board = ""
		@letters = []
		@blanks = "_"
		@guesses = []
		@win == false
		
	end

	def create_board
		@board << @blanks * @answer.length
		p @board
	end


	# end
	def guess_letter
	guess_index = 1 
	
	
		until guess_index > @answer.length
		puts "Player2 guess a letter"
		guessed_letter = gets.chomp.to_s.downcase
		answer_arry = @answer.split('')
        answer_arry.each_with_index do |letter, position| 
  			if letter == guessed_letter
   			 @board[position] = letter
  			else 
    		 puts " incorrect guess" 
  			end
		end
		 guess_index += 1
		 p @board
			puts "Turn #{guess_index}"
		end
	end
	def game_over
		if !(@board.include? "_")
			@win = true
			puts "you won"
		else
			false
			puts"you lost"
		end
	end
end
# Start new instance 
game = Hangman.new("test")
# game.create_board
# game.guess_letter
# game.guess_letter("r")
#User Interface
puts "Welcome to the word game!"
puts "This is a two player game, player 1 please enter your name:"
player1 = gets.chomp
puts "player 2 please enter your name:"
player2 = gets.chomp
puts "Player1 please select a word:"
game.answer = gets.chomp
game.create_board
game.guess_letter
game.game_over


