require 'count_words'

RSpec.describe "count_words" do 
    it "Takes empty string as an argument, and returns 0 as the length" do 
        expect(count_words("")).to eq(0)
    end 
    
    it "Takes large string as an argument, and returns 99 as the length" do 
        expect(count_words("Hey " * 99)).to eq(99)
    end 
end 