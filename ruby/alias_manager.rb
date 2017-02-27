

#business logic
#switch the position of the first and last names
def name_swap(real_name)
  reordered_name = real_name.downcase.split(' ').reverse.join(' ')
  reordered_name 
end

def vowel_swap(real_name)
#define constants
  vowels = "aeiou"
  char_index = 0
  code_name = name_swap(real_name)
  code_name_char = code_name.split('')
  # p code_name_char.length 
  # p code_name_char
  until char_index >= code_name_char.length 
    # p "char_index = #{char_index}"
    # p "current char_index = #{code_name_char[char_index]}"
    # p "code_name_char.length = #{code_name_char.length}"
    # p code_name_char
    if vowels.include?(code_name_char[char_index])
      vowel_next_index = vowels.index(code_name_char[char_index]) + 1    
      code_name_char[char_index] = vowels[vowel_next_index]
    end
    
    if code_name_char[char_index] == nil
      code_name_char[char_index] = vowels[0]
    end
    
    char_index += 1
  end
  code_name_char.join
end

def consontants_swap(real_name)
#define constants
  consonants= "bcdfghjklmnpqrstvwxyz"
  position = 0
  spy_name = vowel_swap(real_name)
  spy_name_char = spy_name.split('')
  # p spy_name_char.length 
  # p spy_name_char
  
  until position == spy_name_char.length
    # p "position = #{position}"
    # p "current position = #{spy_name_char[position]}"
    # p "spy_name_char.length = #{spy_name_char.length}"
    # p spy_name_char
    if consonants.include?(spy_name_char[position])
      consonants_next_index = consonants.index(spy_name_char[position]) + 1    
      spy_name_char[position] = consonants[consonants_next_index]
    end
    if spy_name_char[position] == nil
      spy_name_char[position] = consonants[0]
    end
    position += 1
  end
	spy_name = spy_name_char.join
	spy_name
end

#name_swap("emily mejer")
#vowel_swap("emily mejer")

client_info = {
  first_name: [],
  spy_name: []
}



#User interface

puts "Hello Secret Agenct, welcome to the alias maker! Please fill out all the information and when finished type 'exit'." 
user_input = false

until user_input 

  puts "Please enter your first and last name:"
  full_name = gets.chomp
  if full_name == "exit"
    user_input = true
  else
  client_info[:first_name].push(full_name)
  
  consontants_swap(full_name)
  client_info[:spy_name].push(consontants_swap(full_name))
  end
p client_info
end

client_info.each do |first_name, spy_name|
    puts "#{client_info[:first_name]} is actually #{client_info[:spy_name]} "
end


# Use a data structure to store the fake names as they are entered. When the user exits the program, iterate through the data structure and print all of the data the user entered. A sentence like "Vussit Gimodoe is actually Felicia Torres" or "Felicia Torres is also known as Vussit Gimodoe" for each agent is fine.
