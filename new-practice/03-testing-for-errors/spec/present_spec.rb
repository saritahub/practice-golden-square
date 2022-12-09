require 'present'

RSpec.describe "Present" do 
    context "Unwrap fails" do 
        it "Unwrap fails if no contents wrapped" do 
            present = Present.new
            expect { present.unwrap }.to raise_error "No contents have been wrapped."
        end 
    end 

    it "Wraps the contents of one item" do 
            present = Present.new
            present.wrap("Baked beans")
            expect(present.unwrap).to eq("Baked beans")
    end 
 
end 