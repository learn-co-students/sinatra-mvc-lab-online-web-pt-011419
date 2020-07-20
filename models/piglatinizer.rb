class PigLatinizer

    def piglatinize(text)
        converted_phrase = []
        phrase_array = text.split

        phrase_array.each do |string|
            if string.start_with?(/([aAeEiIoOuU].*)/)
                converted_phrase << "#{string}way"
            else 
                clusters = string.split(/([aAeEiIoOuU].*)/)
                converted_phrase << "#{clusters[1]}#{clusters[0]}ay"
            end
        end
        converted_phrase.join(" ")
    end
end


