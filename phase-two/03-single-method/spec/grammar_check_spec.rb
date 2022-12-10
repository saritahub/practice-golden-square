require 'grammar_check'

RSpec.describe "grammar_check" do 
    context "Checks if a string passes the grammar requirements" do 
        it "Checks if the sentence starts with a capital letter" do
            expect(grammar_check("Hey")).to eq(false) 
        end

        it "Checks if the sentence ends with a punctuation mark" do
            expect(grammar_check("Hey")).to eq(false) 
        end 

        it "Checks if the sentence starts with a capital letter and ends with a punctuation mark" do
            expect(grammar_check("Hey")).to eq(false) 
        end 

        it "Fails if the sentence does not start with a capital letter" do
            expect(grammar_check("hey")).to eq(false) 
        end 

        it "Fails if the sentence does not start with a capital letter and end with a punctuation mark" do
            expect(grammar_check("hey there")).to eq(false) 
        end 
    end 

    context "Edge cases: Fails if input is an empty string or non-string Class" do 
        it "Fails if text is an empty string" do 
            expect {grammar_check("")}.to raise_error("Please enter a string with two or more characters!")
        end 

        it "Fails if text is an array input" do 
            expect {grammar_check(["Array"])}.to raise_error("Please enter a string with two or more characters!")
        end 

        it "Fails if text is an integer input" do 
            expect {grammar_check(1)}.to raise_error("Please enter a string with two or more characters!")
        end 
    end 
end 