require 'make_snippet'

RSpec.describe "make_snippet" do 
    context "Returns the string if there are 5 words or less" do 
        it "Returns the string if there are 5 words" do 
           expect(make_snippet("Baked beans")).to eq("Baked beans")
        end 
    end 
    
end 