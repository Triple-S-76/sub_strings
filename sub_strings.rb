
class Sub_strings
  def sub_strings(phrase, dictionary)
    words = phrase.downcase.split
    hash = {}
    words.each do |current_word|
      dictionary.each do |dictionary_word|
        if current_word.include?(dictionary_word)
          if hash[dictionary_word].nil?
            hash[dictionary_word] = 1
          else
            hash[dictionary_word] += 1
          end
        end
      end
    end
    hash
  end
end
