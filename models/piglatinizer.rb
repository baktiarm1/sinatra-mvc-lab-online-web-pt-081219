class PigLatinizer


  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

 def print
   text
 end 

 def translate
   if text.start_with?('a','e','i','o','u')
    text << 'way'
   else
    text<<'ay'
  end
 end

end
