require 'greet'

RSpec.describe "greet" do
    it "Greets the user by name" do 
        expect(greet("Max")).to eq("Hello, Max")
    end
end 