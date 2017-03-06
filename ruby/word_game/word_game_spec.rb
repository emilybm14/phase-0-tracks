require_relative 'word_game'

describe Word_game do
let (:game) {Hangman.new("ball")}

  it "stores the list items given on initialization" do
    expect(list.get_items).to eq ["ball"]
  end

# Does program ask user1 for word?

# Does the answer get stored in an array?
 
# Is User two prompted to guess letters? 

# Must define letters, are they included in the word? 

# If so put the letters in at that index

# If not, say “letter not included!” 


end