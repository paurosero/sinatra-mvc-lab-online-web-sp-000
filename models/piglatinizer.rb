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
      
    end
  end
end