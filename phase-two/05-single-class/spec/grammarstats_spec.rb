require 'grammarstats'

RSpec.describe GrammarStats do 
    context "#check(text)" do 
        it "Fails if an empty string is passed through as text" do 
            grammarstats = GrammarStats.new 
            expect {grammarstats.check("")}.to raise_error("Please enter a string with at least two characters!")
        end 

        it "Returns true if the sentence starts with a capital letter" do 
            grammarstats = GrammarStats.new
            expect(grammarstats.check("Hello!")).to eq(true)
        end 

        it "Returns true if the sentence ends with a punctuation mark" do 
            grammarstats = GrammarStats.new
            expect(grammarstats.check("Hello!")).to eq(true)
        end 

        it "Returns false if the sentence does not start with a capital letter" do 
            grammarstats = GrammarStats.new
            expect(grammarstats.check("hello")).to eq(false)
        end 

        it "Returns false if the sentence does not end with a punctuation mark" do 
            grammarstats = GrammarStats.new
            expect(grammarstats.check("Hello")).to eq(false)
        end 

        it "Fails if the input is not a string (array)" do 
            grammarstats = GrammarStats.new 
            expect {grammarstats.check([""])}.to raise_error("Please enter a string with at least two characters!")
        end  

        it "Fails if the input is not a string (integer)" do 
            grammarstats = GrammarStats.new 
            expect {grammarstats.check(123)}.to raise_error("Please enter a string with at least two characters!")
        end  
    end 
end 