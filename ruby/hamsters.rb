puts "What is your hamster's name?"
name = gets.chomp
puts "#{name} thats a very nice name"

puts "On a scale of 1 to 10, how loud is your hamster #{name}?"
loudness = gets.chomp

def loudness(str)
  number = str.to_i 
  return number
end

puts "wow thats interesting"

puts "What color fur does your hamster have?"
fur = gets.chomp
puts "#{fur}, thats a beautiful color"

puts "Can your hamster be adopted? (y/n)"
adoption = gets.chomp

if adoption == "y"
  puts "Great!"
else
  puts "Thats too bad."
end


puts "How old is your hamster?"
age = gets.chomp

puts "#{age}, thats our favorite age"

puts "thanks for registering your hamster"