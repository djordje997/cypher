class Rot
    def rot(number_of_rotation)
        puts 'Please enter your text'
        user_input = gets.chomp
        aplhabet = ("a".."z").to_a
        aplhabet2 = ("A".."Z").to_a
        user_input_to_array= user_input.split("")
        result=""
        for each_value in user_input_to_array
            if aplhabet.include?(each_value) || aplhabet2.include?(each_value)
            number_of_rotation.times do
                each_value=each_value.next
                end
            end
                result << each_value[-1] 
            end
    p result
    end
end
var=Rot.new.rot(13)
