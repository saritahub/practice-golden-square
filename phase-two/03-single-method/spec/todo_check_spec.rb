require 'todo_check'

RSpec.describe "todo_check" do 
    it "Fails when an empty string is passed" do 
        expect { todo_check("") }.to raise_error "Please enter a string!"
    end 

    context "Checks if a string contains to do" do 

    end 

end