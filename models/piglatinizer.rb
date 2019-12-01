class PigLatinizer


  attr_accessor :text

  def initialize(text)
    @text = text
  end

 def is_vowel?(word)
   vowels = 'aeiouAEIOU'
   vowels.include?(word[0])
 end

 def piglatinzie(word)
   if self.is_vowel?(word)
     word.concat('way')
   else
     word.concat(word.slice!(/^[^aeiouAEIOU]*/i || "")) + 'ay'
    end
  end

  def to_pig_lating(text)
    text.split.collect {|word| piglatinize(word)}.join(' ')
  end


end
