require_relative 'word_game'

describe Word_game do
let (:game) { Hangman.new(["test"])}

  it "stores word" do
  	game.create_board("test")
    expect(game.create).to eq ["____"]
  end
  it "game over" do
  	game.game_over == true
    expect(game.game_over).to !eq 
  end


end