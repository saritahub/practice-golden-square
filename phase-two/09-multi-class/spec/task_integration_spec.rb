require '09_todotask'
require '09_todolist'

RSpec.describe 'Todo integration' do
    context 'Expected behaviour' do 
        it 'Constructs a task and returns this as an array' do 
            todo = ToDoTask.new('Grow veggies')
            todolist = ToDoList.new 
            todolist.add(todo)
            expect(todolist.task_list).to eq([todo])
        end 
    end 
end 