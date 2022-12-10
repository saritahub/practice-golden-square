require 'todo_check'

RSpec.describe "todo_check" do 
    it "Fails when an empty string is passed" do 
        expect { todo_check("") }.to raise_error "Please enter a string!"
    end 

    context "Checks if a string contains to do" do 
        it "Returns true when text is #TODO" do 
            expect(todo_check("#TODO")).to eq(true)
        end 

        it "Returns true when text contains #TODO" do 
            expect(todo_check("#TODO: Go for a walk")).to eq(true)
        end 
    end 

    context "Fails if string does not contain #TODO" do 
        it "Returns false if the text doesn't contain #TODO" do
            expect(todo_check("Go for a run")).to eq(false)
        end 
    end 

end