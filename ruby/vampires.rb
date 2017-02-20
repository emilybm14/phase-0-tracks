def vampire_test (age_test, garlic_test, wants_care)
  vampire_status = "results inconclusive."
  
  if age_test && (garlic_test || wants_care)
    vampire_status = "Probably not a vampire"
  elsif age_test != true && (garlic_test || wants_care)
    vampire_status = "probably a vampire"
  else age_test != true && garlic_test != true && wants_care != true
    vampire_status = "almost definitely a vampire"
  end
  return vampire_status
end

def allergies
  list_allergies = true
  is_vampire = false

  puts "please list all your allergies when finished please type done"
  while list_allergies
    allergy = gets.chomp.downcase
  if allergy = "sunshine" 
    is_vampire = true
  elsif allergy = "done"
    list_allergies = false
  end
  return is_vampire
end
end

puts "how many employees will be processed"
program_entries = gets.chomp.to_i

until program_entries == 0
  
  puts "what is your name?"
  full_name = gets.chomp
      
#this is the age test 
  puts "how old are you?"
  age = gets.chomp.to_i
      
  puts "what year were you born? (YYYY)"
  year_born = gets.chomp.to_i
  current_year = 2017
  years_alive = current_year - year_born.to_i
    
  if years_alive = age
    age_test = true
  else 
    age_test = false 
  end
    
    
# this is the garlic test
  puts "our cafeteria serves garlic bread. Should we order you some? (y/n)"
  garlic_bread = gets.chomp
    
  if garlic_bread = "y"
    garlic_test = true
  else 
    garlic_test = false 
  end
  
  
  puts "would you like to enroll in our health care insurace? (y/n)"
  health_care = gets.chomp
        
  if health_care = "y"
    wants_care = true
  else 
    wants_care = false 
  end
  
  
  puts vampire_test(age_test, garlic_test, wants_care)
  
  allergies
  
  program_entries = program_entries - 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
