require 'pry'

class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(matches)
    letters = word.strip.split("")
    words = letters.permutation(letters.size).collect {|array| array.join("")}
    words.delete(self.word)
    matches.select do |match_word|
      words.include?(match_word)
    end
  end

end
