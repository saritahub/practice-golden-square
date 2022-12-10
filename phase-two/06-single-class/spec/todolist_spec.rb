require 'todolist'

RSpec.describe ToDoList do
    context "#add" do 
        it "Throws an error if the task is an empty string" do
            todolist = ToDoList.new
            expect {todolist.add("")}.to raise_error("Please enter a string!") 
        end 
    end 
end