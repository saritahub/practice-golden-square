require '08_todo'
require '08_todo_list'

RSpec.describe "ToDoList" do 
    context "Edge cases" do 
        it 'Incomplete raises an error if there are no tasks' do 
            todolist = ToDoList.new
            expect {todolist.incomplete}.to raise_error("No tasks added!")
        end 

        it 'Complete raises an error if there are no tasks' do 
            todolist = ToDoList.new
            expect {todolist.complete}.to raise_error("No tasks added!")
        end 
        
        it 'Give_up raises an error if there are no tasks' do 
            todolist = ToDoList.new
            expect {todolist.give_up!}.to raise_error("No tasks added!")
        end
    end 
end