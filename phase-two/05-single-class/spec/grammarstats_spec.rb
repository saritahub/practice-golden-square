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

    context "#percentage good" do 
        it "Returns 100 when 1 text is passed through, and passes the grammar check" do 
            grammarstats = GrammarStats.new 
            grammarstats.check("This will pass!")
            expect(grammarstats.percentage_good).to eq(100)
        end 

        it "Returns 50 when 2 texts are passed through, and 1 passes the grammar check" do 
            grammarstats = GrammarStats.new 
            grammarstats.check("This will pass!")
            grammarstats.check("but this won't pass!")
            expect(grammarstats.percentage_good).to eq(50)
        end 

        it "Returns 34 when 3 texts are passed through, and 1 passes the grammar check" do 
            grammarstats = GrammarStats.new 
            grammarstats.check("This will pass!")
            grammarstats.check("but this won't pass!")
            grammarstats.check("Or this.")
            expect(grammarstats.percentage_good).to eq(34)
        end 
    end 
end 