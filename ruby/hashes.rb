#business logic

designer_app = {
  app_name: " ",
  app_age: " ",
  app_decor: [],
  app_married: " ",
  app_children: " ",
  app_budget: " "
}


#user interface
p "Interior Designer Application"
#ask for name
puts "Name:"
name = gets.chomp
designer_app[:app_name] = name

#ask age 
puts "Age:"
age = gets.chomp.to_i
designer_app[:app_age] = age


puts "List Decor Option 1:"
decor_1 = gets.chomp
designer_app[:app_decor].push(decor_1)

puts "List Decor Option 2:"
decor_2 = gets.chomp
designer_app[:app_decor].push(decor_2)

puts "List Decor Option 2:"
decor_3 = gets.chomp
designer_app[:app_decor].push(decor_3)

puts "Are you married? (y/n)"
married = gets.chomp
married == married.include?("y")

  if married.include?("y")
    married = "is married"
  else
    married = "is not married"
  end
designer_app[:app_married] = married

puts "If you have children, how many?"
number_of_children = gets.chomp.to_i
designer_app[:app_children] = number_of_children

puts "What is your maximum budget?"
budget = gets.chomp.to_i
designer_app[:app_budget] = budget


p designer_app

puts "If all the information above is correct please type 'correct'. If not please confirm asnwers below."
  is_correct = gets.chomp.downcase
  
  if is_correct.include?("n") 
    #ask for name
    puts "Name:"
    name = gets.chomp
    designer_app[:app_name] = name
    
    #ask age 
    puts "Age:"
    age = gets.chomp.to_i
    designer_app[:app_age] = age
    
    
    puts "List Decor Option 1:"
    decor_1 = gets.chomp
    designer_app[:app_decor].push(decor_1)
  
    puts "List Decor Option 2:"
    decor_2 = gets.chomp
    designer_app[:app_decor].push(decor_2)
    
    puts "List Decor Option 2:"
    decor_3 = gets.chomp
    designer_app[:app_decor].push(decor_3)
    
    
    puts "Are you married? (y/n)"
    married = gets.chomp
    married == married.include?("y")
    
      if married.include?("y")
        married = "is married"
      else
        married = "is not married"
      end
    designer_app[:app_married] = married
    
    puts "If you have children, how many?"
    number_of_children = gets.chomp.to_i
    designer_app[:app_children] = number_of_children
    
    puts "What is your maximum budget?"
    budget = gets.chomp.to_i
    designer_app[:app_budget] = budget
  else
    p "Application Complete"
  end

p designer_app