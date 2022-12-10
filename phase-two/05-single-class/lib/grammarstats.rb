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

        first_char && last_char ? @passing_text.push(text) && true : false 
    end
  
    def percentage_good
        !@all_text.empty? && !@passing_text.empty? ? calculate_percentage : 0
    end

    private
    def calculate_percentage
        ((@passing_text.length.to_f / @all_text.length)*100).ceil 
    end 
end