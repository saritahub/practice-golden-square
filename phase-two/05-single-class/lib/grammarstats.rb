class GrammarStats
    def initialize
        @all_text = []
        @passing_text = []
    end
  
    def check(text) 
        @all_text.push(text)
        fail "Please enter a string with at least two characters!" if text.class != String || text.empty? 
        first_char = text[0].upcase == text[0]
        last_char = text[-1] == "!"

        if first_char && last_char
            @passing_text.push(text)
            true
        else 
            false
        end 
    end
  
    def percentage_good
        ((@passing_text.length.to_f / @all_text.length)*100).ceil
    end
  end