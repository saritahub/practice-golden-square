require 'present'

RSpec.describe "Present" do 
    context "Unwrap fails" do 
        it "Unwrap fails if no contents wrapped" do 
            present = Present.new
            expect { present.unwrap }.to raise_error "No contents have been wrapped."
        end 
    end 
end 