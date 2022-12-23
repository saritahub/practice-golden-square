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
    end 
end 