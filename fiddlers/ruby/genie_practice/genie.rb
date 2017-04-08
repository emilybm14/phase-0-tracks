class Genie
  attr_accessor :name
  attr_reader :age, :submitted_wishes 


  def initialize(name, age)
    @name = name
    @age = age
    @in_lamp = true
    @submitted_wishes = {}
  end
  def enter_lamp
    @in_lamp = true
  end
  def exit_lamp
    @in_lamp = false
  end
  def grant_wish(wish)
    exit_lamp

    wish.each do |request|
      
      if @submitted_wishes.length <= 2
        @submitted_wishes[request] = "Granted"
        puts "Your #{request} has been granted"
        return true
      else
        @submitted_wishes[request] = "Not Granted"
        puts "Sorry I've already granted you three wishes"
        return false
      end
    end

    enter_lamp
    @submitted_wishes
    
  end

  def display_history
    puts "_________________________"
    puts "THIS IS YOUR WISH HISTORY"
    @submitted_wishes.each do |wish, granted|
      puts "#{wish}: #{granted}"
    end
  end

  def favorite_wish
    vowel_count = []
    @submitted_wishes.length.times do |request, granted|
      vowel_count << @submitted_wishes[wish].count("aeiou")
      vowel_count
    end
    position = vowel_count.index(vowel_count.max)
    puts "Genie's favorie wish is #{@submitted_wishes[position]}"
  end

end

genie_1 = Genie.new("Bob", 3218)
genie_2 = Genie.new("Youssef", 2817)

p genie_1
p genie_2

genie_1.grant_wish(["I Want a Pony NOW", "I Want a new Pony NOW", "I Want another Pony NOW", "I Want one more Pony NOW", "asfasfds"])

genie_1.display_history
genie_1.favorite_wish


# genie_1.name = "George"
# p genie_1

# p genie_1.age