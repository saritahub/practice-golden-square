require 'make_snippet'

RSpec.describe "make_snippet" do 
    it "Returns an empty string" do 
        expect(make_snippet("")).to eq("")

    end 
    context "Returns the string if there are 5 words or less" do 
        it "Returns the string if there are 2 words" do 
           expect(make_snippet("Baked beans")).to eq("Baked beans")
        end 

        it "Returns the string if there are 5 words" do 
           expect(make_snippet("There are five words here.")).to eq("There are five words here.")
        end 
    end 

    context "Returns snippet if there are more than 5 words" do 
        it "Returns the first five words followed by ..." do 
            expect(make_snippet("There are more than five words here.")).to eq("There are more than five...")
         end 

        it "Returns the first five words and ..." do 
            expect(make_snippet("Repeat this " * 10)).to eq("Repeat this Repeat this Repeat...")
         end 
    end 

end 