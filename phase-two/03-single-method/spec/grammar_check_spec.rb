require 'grammar_check'

RSpec.describe "grammar_check" do 
    context "Checks if a string passes the grammar requirements" do 
        it "Checks if the sentence starts with a capital letter" do
            expect(grammar_check("Hey")).to eq(true) 
        end

        it "Checks if the sentence ends with a punctuation mark" do
            expect(grammar_check("Hey")).to eq(true) 
        end 

        it "Checks if the sentence starts with a capital letter and ends with a punctuation mark " do
            expect(grammar_check("Hey")).to eq(true) 
        end 
    end 
end 