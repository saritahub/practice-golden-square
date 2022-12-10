require 'grammarstats'

RSpec.describe GrammarStats do 
    context "#check(text)" do 
        it "Fails if an empty string is passed through as text" do 
            grammarstats = GrammarStats.new 
            expect {grammarstats.check("")}.to raise_error("Please enter a string with at least two characters!")
        end 
    end 
end 