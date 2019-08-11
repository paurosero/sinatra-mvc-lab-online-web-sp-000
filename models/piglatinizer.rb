class PigLatinizer
  attr_reader :word 
  
  def initiliaze(word)
    @word = word.downcase
  end
  
  def piglatinize(string)
    piglat_string = string.split(" ").map {|word| piglatinize_word(word) }
    piglat_string.join (" ")
  end
  
  def piglatinize_word(word)
    first_letter = word[0]
    if ["a", "e", "i", "o", "u"].include?(first_letter)
      "#{word}yay"
    else
      consonants = []
      consonants << word[0]
        if ["a", "e", "i", "o", "u"].include?(word[1]) == false
          consonants << word[1]
          if ["a", "e", "i", "o", "u"].include?(word[2]) == false
            consonants << word[2]
          end
        end
      "#{word[consonants.length..-1] + consonants.join + "ay"}"
    end
  end
end