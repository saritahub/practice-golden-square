require 'gratitudes'

RSpec.describe "Gratitudes" do 
    it "Returns string with an empty list when no gratitudes added" do 
        gratitudes = Gratitudes.new
        expect(gratitudes.format).to eq("Be grateful for: ")
    end  

    it "Returns a gratitude list with one item" do
        gratitudes = Gratitudes.new
        gratitudes.add("Baked beans")
        expect(gratitudes.format).to eq("Be grateful for: Baked beans")
    end  
end 