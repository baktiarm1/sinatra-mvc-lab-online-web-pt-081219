class PigLatinizer


  attr_reader :text

  def initialize(text)
    @text = text
  end

 def is_vowel?(word)
   vowels = 'aeiouAEIOU'
   vowels.include?(word[0])
 end 

 def translate
   if text.start_with?('a','e','i','o','u')
    text << 'way'
   else
    text<<'ay'
  end
 end

end
