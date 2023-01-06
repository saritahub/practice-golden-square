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
    end 


end 