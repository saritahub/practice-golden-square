require 'grammarstats'

RSpec.describe GrammarStats do 
    context "#check(text)" do 
        it "Fails if an empty string is passed through as text" do 
            grammarstats = GrammarStats.new 
            expect {grammarstats.check("")}.to raise_error("Please enter a string with at least two characters!")
        end 

        it "Returns true if the sentence starts with a capital letter" do 
            grammarstats = GrammarStats.new
            expect(grammarstats.check("Hello")).to eq(true)
        end 
    end 
end 