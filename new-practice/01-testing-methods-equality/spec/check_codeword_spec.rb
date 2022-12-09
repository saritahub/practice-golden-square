require 'check_codeword'

RSpec.describe "#check_codeword" do
    it "Returns 'Correct! Come in.' when the codeword is 'horse'" do
        expect(check_codeword("horse")).to eq("Correct! Come in.")
    end

    it "Returns 'Close, but nope.' when the codeword starts with 'h' and ends with 'e'" do
        expect(check_codeword("house")).to eq("Close, but nope.")
    end 
end