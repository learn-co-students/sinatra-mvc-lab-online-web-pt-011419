class PigLatinizer 
    def initialize 
    end

    def piglatinize(string)
        a = string.split(" ")
        b = a.map {|word| piglatinize_word(word)}
        b.join(" ")
    end

    def piglatinize_word(word)
        first_letter = word[0].downcase 

        if ["a", "e", "i", "o", "u"].include?(first_letter) 
            "#{word}way"
        else 
            arr = word.split(/([aeiou].*)/)
            arr[1] + arr[0] + "ay"
        end
    end
end