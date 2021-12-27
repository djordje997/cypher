def rot(number_of_rotation)
    puts 'Please enter your text'
    user_input = gets.chomp
    aplhabet = ("a".."z").to_a
    user_input_to_array= user_input.split("")
    result=""
    for each_value in user_input_to_array
        number_of_rotation.times do
            each_value=each_value.next 
        end
        result << each_value
    end
p result
end
rot(5)