require 'count_words'

RSpec.describe "count_words" do 
    it "Takes empty string as an argument, and returns 0 as the length" do 
        expect(count_words("")).to eq(0)
    end 
end 