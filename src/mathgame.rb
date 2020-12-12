
require "tty-prompt"
require 'colorize'
require 'colorized_string'
prompt = TTY::Prompt.new

puts "Hi there!   (Press Enter to continue)"
gets
puts "Welcome to the perfect training ground to test your basic math arithmetic skills. (Press Enter to continue)"
gets
puts "Could I get your name?" 
name = gets.chomp.light_red
if name == ""
  puts "You don't have a name? Let's try this again shall we."
  name = gets.chomp.light_red
end
puts "Excellent."
puts "Now remember #{name}, SPEED and ACCURACY are the keys to acheiving a high rank!"
puts "(Press Enter to continue)"                          
gets

menu_selection = prompt.select("Welcome #{name}") do |menu|

  menu.choice "Challenge Mode"
  menu.choice "High Scores"
  menu.choice "Stats"
  menu.choice "How to Play"
end
 
if menu_selection == "Challenge Mode"

  arithmetic_selection = prompt.select("Which challenge do you prefer #{name}?") do |arithmetic|
    arithmetic.choice "Addition"
    arithmetic.choice "Subtraction"
    arithmetic.choice "Multiplication"
    arithmetic.choice "Division"
  end

 if arithmetic_selection == "Addition"

  puts "PREPARE YOURSELF!"
  t = Time.new(0)
countdown_time_in_seconds = 3

countdown_time_in_seconds.downto(0) do |seconds|
  puts (t + seconds).strftime('%S').blue
  sleep 1
  
end
puts "GO!".magenta
puts rand(2..99) + rand(2..99)
end

end
