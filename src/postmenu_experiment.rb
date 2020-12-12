def throw_addition
    digit_1 = rand(10..99)
    digit_2 = rand(10..99)
    result = digit_1 + digit_2
    puts "#{digit_1} + #{digit_2}"
    return result 
end 


while user_input == correct
answer = throw_addition
user_input = gets.chomp.to_i
if answer == user_input
    user_input = correct
   puts "correct"
else
   user_input = incorrect
   puts "incorrect" 
   puts "YOU'RE DISQUALIFIED!"
end




#answer = throw_addition
#user_input = gets.chomp.to_i
#if answer == user_input
#    puts "correct"
#else
#    puts "incorrect"
#end


