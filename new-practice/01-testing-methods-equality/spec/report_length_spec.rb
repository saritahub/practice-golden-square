require 'report_length'

RSpec.describe "Report length" do 
    it "Counts the number of characters in a string, and returns the value" do 
        expect(report_length("Baked Beans")).to eq("This string was 11 characters long.")
    end 
end 