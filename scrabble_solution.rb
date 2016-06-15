require 'pry'
class Scrabble
  attr_accessor :letter, :double, :triple
  def initialize(word)
    @word = word
  end

  def self.score(word) # you can invert the keys and value to make a find easier.
    letter_scores = {
      1 => ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
      2 => ['D', 'G'],
      3 => ['B', 'C', 'M', 'P'],
      4 => ['F', 'H', 'V', 'W', 'Y'],
      5 => ['K'],
      8 => ['J', 'X'],
      10 => ['Q', 'Z']
    }
    broken_word = word.upcase.split ""

    total_score = 0
    broken_word.each do |letter_in_word|
      letter_value = letter_scores.select {|scores, letter| letter.include? letter_in_word }.keys.join.to_i
      total_score += letter_value
    end
    puts "The score for #{ broken_word.join } is #{total_score}!"
  end

end

Scrabble.score("cabbage")
