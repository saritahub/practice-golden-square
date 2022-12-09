require 'greet'

RSpec.describe "greet" do
    it "Greets the Max by their name" do 
        expect(greet("Max")).to eq("Hello, Max")
    end
    it "Greets the Cow by their name" do 
        expect(greet("Cow")).to eq("Hello, Cow")
    end
end 