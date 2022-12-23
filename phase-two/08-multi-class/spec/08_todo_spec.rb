require '08_todo'

RSpec.describe "ToDo" do 
    context "Expected input" do
        it 'Constructs a todo task and returns this as a string' do
            todo = ToDo.new('Go for a run')
            expect(todo.task).to eq('Go for a run')
        end
        
        it 'Constructs todo tasks and returns them as a string' do
            todo_1 = ToDo.new('Go for a run')
            todo_2 = ToDo.new('Walk the dog')
            expect(todo_1.task).to eq('Go for a run')
            expect(todo_2.task).to eq('Walk the dog')
        end 
    
    end

    xcontext "Edge cases" do 
    end
end 