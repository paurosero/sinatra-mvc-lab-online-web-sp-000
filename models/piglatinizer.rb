class PigLatinizer
  attr_reader :word 
  
  def initiliaze(word)
    @word = word.downcase
  end
  
  def piglatinize(word)
    binding.pry 
    word.split(" ")
  end
end