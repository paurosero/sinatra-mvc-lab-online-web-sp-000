class PigLatinizer
  attr_reader :word 
  
  def initiliaze(word)
    @word = word.downcase
  end
  
  def piglatinize(string)
    binding.pry 
    piglat_string = string.split(" ")
  end
end