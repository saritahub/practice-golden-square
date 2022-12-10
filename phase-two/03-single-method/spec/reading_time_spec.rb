require 'reading_time'

RSpec.describe "reading_time" do 
    context "Input is a string, returns reading time in minutes" do
        it "Returns 0 when the input is an empty string" do 
            expect(reading_estimate = reading_time(" ")).to eq(0)
        end  
    end 

end 