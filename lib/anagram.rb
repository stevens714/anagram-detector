# class Anagram
#     attr_accessor :word

#     def intialize(word)
#         @word = word
#     end

#     def match(string)
#         string.select do |w|
#             w.split("").sort == word.split("").sort
#         end
#     end
# end

class Anagram
    def initialize(anagram)
      @anagram = anagram
    end
  
    def match(word_list)
      anagrams = []
      word_list.each do |word|
        if comp(@anagram) == comp(word) 
          anagrams << word
        end
      end
      anagrams
    end
  
    
    def comp(word)
      word.downcase.scan(/\w/).sort
    end
  end