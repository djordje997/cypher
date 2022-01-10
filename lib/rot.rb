class Rot
    ALPHABET = (("a".."z").to_a + ("A".."Z").to_a).freeze
    MAX_ROT_KEY = 26

    def initialize(rot_key)
        @rot_key = rot_key
        if @rot_key > MAX_ROT_KEY
            raise ArgumentError, "Given rot key must be less than 26."
        end
    end

    def encrypt(message)
        @message = message.split("")
        @result = ""
        for @letter in @message

            def encryptable_letter?
                ALPHABET.include?(@letter)
            end

            def encrypt_letter
                if encryptable_letter? 
                    @rot_key.times do 
                    @letter = @letter.next
                    end
                end
            end

            encrypt_letter
            @result << @letter[-1]
        end
        @result     
    end   
end
