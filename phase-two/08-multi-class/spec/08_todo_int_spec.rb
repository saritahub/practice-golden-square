require '08_todo'
require '08_todo_list'

RSpec.describe "ToDo integration" do 
    context "Expected input" do 
        it 'Adds a task and returns this as incomplete' do 
            todolist = ToDoList.new
            todo = ToDo.new('Go shopping')
            todolist.add(todo)
            expect(todo.incomplete).to eq(['Go shopping'])
        end 
    end 
end 