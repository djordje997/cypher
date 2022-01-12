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
    result = ""
    message.each_char do |letter|
      result << encrypt_letter(letter)
    end
    result  
  end

  private
  
  def encryptable_letter?(letter)
    ALPHABET.include?(letter)
  end

  def encrypt_letter(letter)
    if encryptable_letter?(letter) 
      @rot_key.times do 
        letter = letter.next
      end
    end
    letter[-1]
  end
end
