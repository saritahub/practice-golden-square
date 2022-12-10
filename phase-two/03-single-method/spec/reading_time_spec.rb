require 'reading_time'

RSpec.describe "reading_time" do 
    context "Input is a string, returns reading time in minutes" do
        it "Returns 0 when the input is an empty string" do 
            expect(reading_estimate = reading_time(" ")).to eq(0)
        end  

        it "Returns 1, as the user can read 200 wpm and there are 200 words" do 
            expect(reading_estimate = reading_time("Hello " * 200)).to eq(1)        
        end  

        it "Returns 2, as the user can read 200 wpm and there are 400 words" do 
            expect(reading_estimate = reading_time("Hello " * 400)).to eq(2)        
        end  

        it "Rounds up to the nearest integer. Returns 3, as the user can read 200 wpm and there are 500 words" do 
            expect(reading_estimate = reading_time("Hello " * 500)).to eq(3)        
        end  

        it "Rounds up to the nearest integer. Returns 8, as the user can read 200 wpm and there are 1500 words" do 
            expect(reading_estimate = reading_time("Hello " * 1500)).to eq(8)        
        end  
    end 

end 