require 'present'

RSpec.describe "Present" do 
    context "Unwrap fails" do 
        it "Unwrap fails if no contents wrapped" do 
            present = Present.new
            expect { present.unwrap }.to raise_error "No contents have been wrapped."
        end 
    end 

    it "Wraps and unwraps the contents of one item" do 
            present = Present.new
            present.wrap("Baked beans")
            expect(present.unwrap).to eq("Baked beans")
    end 

 
    context "Wrap fails" do 
        it "Wrap fails if we wrap the same present twice" do 
            present = Present.new
            present.wrap("Beans")
            expect { present.wrap("Beans") }.to raise_error "Contents already wrapped."
        end    
    end
 
end 