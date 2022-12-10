class GrammarStats
    def initialize
      # ...
    end
  
    def check(text) 
        fail "Please enter a string with at least two characters!" if text.class != String || text.empty? 
        first_char = text[0].upcase == text[0]
        last_char = text[-1] == "!"

        if first_char && last_char
            true
        else 
            false
        end 
    end
  
    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
      100
    end
  end