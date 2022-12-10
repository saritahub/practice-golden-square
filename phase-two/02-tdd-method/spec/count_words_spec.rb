require 'count_words'

RSpec.describe "count_words" do 
    it "Takes empty string as an argument, and returns 0 as the length" do 
        expect(count_words("")).to eq(0)
    end 

    it "Takes large string as an argument, and returns 99 as the length" do 
        expect(count_words("Hey " * 99)).to eq(99)
    end

    it "Takes large string with various delimiters, and returns 400 as the length" do 
        expect(count_words("Hey, how are you " * 100)).to eq(400)
    end 
end 