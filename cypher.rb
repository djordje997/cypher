def rot(number_of_rotation)
    puts 'Please enter your text'
    user_input = gets.chomp
    aplhabet = ("a".."z").to_a
    user_input_to_array= user_input.split("")
    p user_input_to_array
    p aplhabet

end
rot(1)