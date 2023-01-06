require '09_todotask'
require '09_todolist'

RSpec.describe 'Todo integration' do
    context 'Expected behaviour' do 
        it 'Constructs a task and returns this as an array' do 
            todo = ToDoTask.new('Grow veggies')
            todolist = TaskList.new 
            todolist.add(todo)
            expect(todolist.task_list).to eq([todo])
        end

        it 'Constructs multiple tasks and returns them as an array' do 
            todo_1 = ToDoTask.new('Grow veggies')
            todo_2 = ToDoTask.new('Walk')
            todolist = TaskList.new 
            todolist.add(todo_1)
            todolist.add(todo_2)
            expect(todolist.task_list).to eq([todo_1, todo_2])
        end 
    end 
end 