require 'make_snippet'

RSpec.describe "make_snippet" do 
    context "Returns the string if there are 5 words or less" do 
        it "Returns the string if there are 2 words" do 
           expect(make_snippet("Baked beans")).to eq("Baked beans")
        end 

        it "Returns the string if there are 5 words" do 
           expect(make_snippet("There are five words here.")).to eq("There are five words here.")
        end 
    end 

end 