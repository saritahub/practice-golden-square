require 'gratitudes'

RSpec.describe "Gratitudes" do 
    it "Returns string with an empty list when no gratitudes added" do 
        gratitudes = Gratitudes.new
        expect(gratitudes.format).to eq("Be grateful for: ")
    end  
end 