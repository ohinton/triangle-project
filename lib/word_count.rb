require('pry')
class String
  define_method(:word_identify) do |user_word|
    word_exist = false
    word_counter = 0
    self.split(" ").each do |word|
      if word.word_evaluator(user_word)
        word_exist = true
        word_counter +=1
      end
    end
    word_exist
    word_counter.to_s()
  end
end
class String
  define_method(:word_evaluator) do |word|
    if word.downcase == self.downcase 
      true
    else
      false
    end
  end
end
# class String
#   define_method(:sentence_return) do |user_word|
#     self.split(" ").each do |word|
#       if word.word_evaluator(user_word)
#         word = <srong>word</word>
#       end
#     end
#     word_exist
#     word_counter
#   end
# end
