require "pry"
class PigLatinizer
  # sentences = []
  
  def piglatinize(words) 
  sentence = words.split(" ").collect do |word| 

    if vowel?(word[0])
     word + "way"
    
    elsif !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2])
      letter3 = word.slice(0..2)
      end_word = word.slice(3..-1)
    end_word + letter3 + "ay"
    elsif !vowel?(word[0]) && !vowel?(word[1])
      letter2 = word.slice(0..1)
      end_word = word.slice(2..-1)
    end_word + letter2 + "ay"
    # binding.pry
    elsif !vowel?(word[0])
      letter1 = word[0]
      word = word.slice(1..-1)
      word + letter1 + 'ay'
     end
    end
  sentence.join(" ")
end
  
  def vowel?(char)
    char.match(/[aAeEiIoOuU]/)
  end
end

