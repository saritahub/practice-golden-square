require '08_todo'
require '08_todo_list'

RSpec.describe "ToDo integration" do 
    context "Expected input" do 
        it 'Adds a task and returns this as incomplete' do 
            todolist = ToDoList.new
            todo = ToDo.new('Go shopping')
            todolist.add(todo)
            expect(todolist.incomplete).to eq([todo])
        end 

        it 'Adds multiple tasks and returns a list of incomplete todo tasks' do 
            todolist = ToDoList.new
            todo_1 = ToDo.new('Go shopping')
            todo_2 = ToDo.new('Meditate')
            todolist.add(todo_1)
            todolist.add(todo_2)
            expect(todolist.incomplete).to eq([todo_1, todo_2])
        end 

        it 'Marks a task as complete, and returns it as completed' do 
            todolist = ToDoList.new
            todo_1 = ToDo.new('Go shopping')  
            todolist.add(todo_1) 
            todo_1.mark_done!
            expect(todolist.complete).to eq([todo_1])
        end 

        it 'Marks two task as complete, and returns them as completed' do 
            todolist = ToDoList.new
            todo_1 = ToDo.new('Go shopping')  
            todo_2 = ToDo.new('Wash the car')  
            todolist.add(todo_1)
            todolist.add(todo_2)
            todo_1.mark_done!
            todo_2.mark_done!
            expect(todolist.complete).to eq([todo_1, todo_2])
        end  

        it 'Adds two tasks, marks one as complete. Returns the completed and incomplete tasks' do
            todolist = ToDoList.new
            todo_12 = ToDo.new('Go shopping')
            todo_13 = ToDo.new('Wash the car')
            todolist.add(todo_12)
            todolist.add(todo_13)
            todo_12.mark_done!
            expect(todolist.complete).to eq([todo_12])
            expect(todolist.incomplete).to eq([todo_13])
        end 

        it 'Marks all tasks as complete' do 
            todolist = ToDoList.new
            todo_1 = ToDo.new('Go shopping')  
            todo_2 = ToDo.new('Wash the car') 
            todolist.add(todo_1) 
            todolist.add(todo_2) 
            todolist.give_up!
            expect(todolist.complete).to eq([todo_1, todo_2])
        end 


    end 
end 