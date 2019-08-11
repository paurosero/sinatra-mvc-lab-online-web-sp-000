class PigLatinizer
  attr_reader :word 
  
  def initiliaze(word)
    @word = word.downcase
  end
  
  def piglatinize(string)
    binding.pry 
    piglat_string = string.split(" ").map {|word| piglatinize_word(word) }
    piglat_string.join (" ")
  end
end