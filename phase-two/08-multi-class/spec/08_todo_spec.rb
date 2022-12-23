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

    context "Edge cases" do 
        it 'Raises error if the input is not a string (array)' do 
            expect { todo_1 = ToDo.new(["Cake"])}.to raise_error("Please enter the task as a string!")
        end
        
        it 'Raises error if the input is not a string (integer)' do 
            expect { todo_1 = ToDo.new(123)}.to raise_error("Please enter the task as a string!")
        end
        
        xit 'Raises an error if the task does not exist' do 
            todo = ToDo.new('Walk the dog')
            expect {todo_1.task}.to raise_error("This task does not exist")
        end 
    end
end 