puts "what is your name?"
full_name = gets.chomp

# this is the age test 
puts "how old are you?"
age = gets.chomp

current_year = 2017

puts "what year were you born? (YYYY)"
year_born = gets.chomp

years_alive = current_year - year_born.to_i

if years_alive == age.to_i 
  years_alive = true
else
  years_alive = false
end

# this is the garlic test
puts "our cafeteria serves garlic bread. Should we order you some? (y/n)"
garlic_bread = gets.chomp

if garlic_bread = y.include?
	likes_garlic = true
else
	likes_garlic = false
end

puts "would you like to enroll in our health care insurace? (y/n)"
health_care = gets.chomp

if health_care = y.include?
	wants_care = true
else
	wants_care = false
end

if test_1 = years_alive == true && (likes_garlic == true || wants_care == true)
	puts "Probably not a vampire."
end

if test_2 = years_alive == false && (likes_garlic == false || wants_care == false)
	puts "Probably a vampire."
end

if test_3 = years_alive == false && likes_garlic == false && wants_care == false



