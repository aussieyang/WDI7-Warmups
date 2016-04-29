class CesarCipher

  ALPHABET = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

  def self.decode(string, shift=3)

    decoded = []
    shift = shift.to_i
    string.downcase!

    string.each_char do |char|
      if char == ' '
        decoded << ' '
      elsif ALPHABET.include?(char)
        index = ALPHABET.index(char)
        new_index = index - shift
        decoded << ALPHABET[new_index]
      else
        decoded << char
      end

    end
    decoded.join
  end

  def self.encode(string, shift=3)

    coded = []
    shift = shift.to_i
    string.downcase!

    string.each_char do |char|
      if char == ' '
        coded << ' '
      elsif ALPHABET.include?(char)
        index = ALPHABET.index(char)
        new_index = index + shift
        coded << ALPHABET[new_index]
      else
        coded << char
      end

    end
    coded.join
  end
end

p CesarCipher.encode(' ')

p CesarCipher.decode("QEXKHP JXQQ! VBP F ZXK ABJL! ")
