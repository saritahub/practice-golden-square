require 'check_codeword'

RSpec.describe "#check_codeword" do
    it "returns 'Correct! Come in.' when the codeword is 'horse'" do
        expect(check_codeword("horse")).to eq("Correct! Come in.")
    end

end