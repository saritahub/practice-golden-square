require 'string_builder'

RSpec.describe "String builder" do 
    context "#size returns string length" do 
        it "Returns 11 when the string input has 11 characters" do 
            string = StringBuilder.new
            string.add("Baked beans")
            expect(string.size).to eq(11)
        end 

        it "Adds multiple string inputs, and returns the total number of characters" do 
            string = StringBuilder.new
            string.add("Baked beans")
            string.add("Toast")
            string.add("Chickpeas")
            string.add("Roast potatoes")
            string.add("Cheeze")
            string.add("Ceylon tea")
            expect(string.size).to eq(55)
        end 
    end 

    context "#output returns the string" do 
        it "Returns the string" do 
            string = StringBuilder.new
            string.add("Baked beans")
            expect(string.output).to eq("Baked beans")
        end 

        it "Returns a large string when multiple strings added" do 
            string = StringBuilder.new
            string.add("Baked beans")
            string.add("Toast")
            string.add("Chickpeas")
            string.add("Roast potatoes")
            string.add("Cheeze")
            string.add("Ceylon tea")
            expect(string.output).to eq("Baked beansToastChickpeasRoast potatoesCheezeCeylon tea")
        end 
    end  
end 