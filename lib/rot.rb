ALPHABET= ("a".."z").to_a + ("A".."Z").to_a
class Rot
    
    def rot(number_of_rotation, user_input)
        if number_of_rotation > 26
            p 'please enter number between 0-26'
        end
        user_input_to_array= user_input.split("")
        result=""
        for each_value in user_input_to_array
            if ALPHABET.include?(each_value) 
            number_of_rotation.times do
                each_value=each_value.next
                end
            end
                result << each_value[-1] 
            end
    p result
    end
end
