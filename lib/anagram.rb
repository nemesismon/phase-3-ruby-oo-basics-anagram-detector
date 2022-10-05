# Your code goes here!

class Anagram
    attr_accessor :word, :array

    def initialize(word)
        @word=word
    end

    def match(array)
        temp_array = []
        @array=array 
        @array.map do |item|
            puts item
            item_letters = item.split('').sort.to_s
            word_letters = @word.split('').sort.to_s
            if item_letters == word_letters
                temp_array << "#{item}"
            end
        end
        if temp_array != []
            return temp_array
        else
            return []
        end
    end

end