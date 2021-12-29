
class Rot
    ALPHABET= ("a".."z").to_a + ("A".."Z").to_a
    ALPHABET.freeze
    def initialize(rot_key)
        @rot_key=rot_key
    end
    def encrypt(message)
        @message=message.split("")
        result=""
        for letter in @message
            if ALPHABET.include?(letter)
                @rot_key.times do 
                    letter=letter.next
                end
            end
                result << letter[-1]
        end
        p result
    end
end
