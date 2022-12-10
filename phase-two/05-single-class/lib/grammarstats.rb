class GrammarStats
    def initialize
      # ...
    end
  
    def check(text) 
        fail "Please enter a string with at least two characters!" if text.empty?
        true 
    end
  
    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
    end
  end