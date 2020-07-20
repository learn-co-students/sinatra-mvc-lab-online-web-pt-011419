require 'pry'

class PigLatinizer

  # def piglatinize(words)
  #
  #   if words.start_with?(/[bcdfghjklmnpqrstvwxyz]/)
  #     letter_arr = words.split("")
  #     last_letter = letter_arr.shift
  #     letter_arr << last_letter + "ay"
  #     pig_word = letter_arr.join
  #     piglatinize(pig_word)
  #   elsif words.start_with?(/[aeiou]/)
  #     words + "way"
  #   else
  #     words
  #   end
  #
  #
  #   # arr.map do |word|
  #   #   if word.start_with?(/[bcdfghjklmnpqrstvwxyz]/)
  #   #     letter_arr = word.split("")
  #   #     last_letter = letter_arr.shift
  #   #     letter_arr << last_letter + "ay"
  #   #     letter_arr.join.split
  #   #   end
  #   # end
  # end
  #
  # def piglatinize(words)
  #   pig_array = []
  #   word_array = words.split(" ")
  #   word_array.each do |word|
  #     until word.start_with?(/[aeiou]/)
  #       last_letter = word.split("").shift
  #       word << last_letter
  #     end
  #     word + "ay"
  #   end
  # end

  #find out if more than one word was entered.

  def translate_word(text)

    if /^[aeiou]/i.match(text)
      "#{text}way"
    else
      parts = text.split(/([aeiou].*)/)
      "#{parts[1]}#{parts[0]}ay"
    end
  end

  def piglatinize(text)
    words = text.split(' ')
    words.map {|word| translate_word(word)}.join(' ')
  end

end
