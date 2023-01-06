require '09_todolist'

RSpec.describe 'TaskList' do 
    it 'Prompts to add a task if task list empty' do 
        todolist = TaskList.new 
        expect{todolist.task_list}.to raise_error('No tasks added!')
    end
end 