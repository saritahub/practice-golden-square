require 'todolist'

RSpec.describe ToDoList do
    context "#add" do 
        it "Throws an error if the task is an empty string" do
            todolist = ToDoList.new
            expect {todolist.add("")}.to raise_error("Please enter a string!") 
        end 

        it "Raises an error if the task is not a string (array)" do 
            todolist = ToDoList.new
            expect {todolist.add([""])}.to raise_error("Please enter a string!")
        end 

        it "Raises an error if the task is not a string (integer)" do 
            todolist = ToDoList.new
            expect {todolist.add(3472348)}.to raise_error("Please enter a string!")
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

    context "#mark_complete" do 
        it "Raises an error if there are no tasks set" do 
            todolist = ToDoList.new
            expect {todolist.mark_complete("Walk at 3PM")}.to raise_error("There are no tasks set!")
        end 

        it "Raises an error if the task does not exist" do 
            todolist = ToDoList.new
            todolist.add("Go shopping")
            expect {todolist.mark_complete("Walk at 3PM")}.to raise_error("This task does not exist!")
        end 

        it "Removes the task from the list" do 
            todolist = ToDoList.new
            todolist.add("Go shopping")
            todolist.add("Make tea")
            todolist.mark_complete("Make tea")
            expect(todolist.task_list).to eq("Go shopping")
        end 

        it "Removes multiple tasks from the list and returns incomplete tasks" do 
            todolist = ToDoList.new
            todolist.add("Go shopping")
            todolist.add("Make tea")
            todolist.add("Walk")
            todolist.add("Adopt a dog")
            todolist.mark_complete("Make tea")
            todolist.mark_complete("Walk")
            expect(todolist.task_list).to eq("Go shopping, Adopt a dog")
        end 

        # xit "Only removes one task from the list if there are duplicates" do
        #     todolist = ToDoList.new
        #     todolist.add("Go shopping")
        #     todolist.add("Make tea") 
        #     todolist.add("Make tea") 
        #     todolist.mark_complete("Make tea")
        #     expect(todolist.task_list).to eq("Go shopping, Make tea")
        # end  
    end 
end