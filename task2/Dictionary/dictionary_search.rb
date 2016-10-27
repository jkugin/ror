class DictionarySearch
  def initialize(file_path)
      @dictionary = []
      @dictionary_reverse = []
      @pairs = []
      
      File.open(file_path, 'r') do |f|
        f.each_line do |line|
            l=line.chomp
            if l.size<3
                next
            elsif l[-1]==l[-2]
                next
            else
                @dictionary << l
                @dictionary_reverse << reverse_letter(l).chomp
            end
        end
      end 
  end
  
  def word_pairs
      origin_words = @dictionary & @dictionary_reverse
      origin_words.each do |word|
         @pairs.push([word, reverse_letter(word)])
         origin_words.delete(reverse_letter(word))
      end
      @pairs
  end
  
  private
  
  def reverse_letter(word)
      last_letter = word[-1]
      prelast_letter = word[-2]
      word[0..-3]+last_letter+prelast_letter
  end
end  
