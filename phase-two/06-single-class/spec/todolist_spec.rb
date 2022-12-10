require 'todolist'

RSpec.describe ToDoList do
    context "#add" do 
        it "Throws an error if the task is an empty string" do
            todolist = ToDoList.new
            expect {todolist.add("")}.to raise_error("Please enter a string!") 
        end 
    end 

    context "#task_list" do 
        it "Adds a task to the list, and returns the task list" do 
            todolist = ToDoList.new
            todolist.add("Walk the dog")
            expect(todolist.task_list).to eq("Walk the dog")
        end 

        it "Adds two tasks to the list, and returns the task list" do 
            todolist = ToDoList.new
            todolist.add("Walk the dog")
            todolist.add("Wash the car")
            expect(todolist.task_list).to eq("Walk the dog, Wash the car")
        end 
    end 
end