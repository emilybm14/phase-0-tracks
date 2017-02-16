


wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false


puts "what is your name?"
full_name = gets.chomp

puts "how old are you?"
age = gets.chomp

puts "what year were you born? (YYYY)"
year_born = gets.chomp
current_year = 2017
years_alive = current_year - year_born

if years_alive != age
	puts "you may be a vampire"
end


puts "our cafeteria serves garlic bread. Should we order you some?"
garlic_bread = gets.chomp


puts "would you like to enroll in our health care insurace? (y/n)"
health_care = gets.chomp


