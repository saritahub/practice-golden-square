require 'string_builder'

RSpec.describe "String builder" do 
    context "#size returns string length" do 
        it "Returns 11 when the string input has 11 characters" do 
            string = StringBuilder.new
            string.add("Baked beans")
            expect(string.size).to eq(11)
        end 
    end 
end 