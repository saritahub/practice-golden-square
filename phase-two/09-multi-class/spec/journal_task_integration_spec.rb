require '09_todotask'
require '09_todolist'
require '09_journal_entry' 
require '09_journal'

RSpec.describe 'Journal task integration' do 
    context 'Expected behaviour' do 
        it 'Diary returns the task list' do 
            diary = Journal.new 
            todo = ToDoTask.new('Grow veggies')
            todolist = TaskList.new 
            todolist.add(todo)
            diary.add_task(todo)
            expect(diary.task_list).to eq([todo])
        end 

        it 'Diary returns the task list with multiple items' do 
            diary = Journal.new 
            todo_1 = ToDoTask.new('Grow veggies')
            todo_2 = ToDoTask.new('Run')
            todolist = TaskList.new 
            todolist.add(todo_1)
            todolist.add(todo_2)
            diary.add_task(todo_1)
            diary.add_task(todo_2)
            expect(diary.task_list).to eq([todo_1, todo_2])
        end 
    end 


end 