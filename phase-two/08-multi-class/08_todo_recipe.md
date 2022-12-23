# ToDo Multi-Class Planned Design Recipe

## 1. Describe the Problem
- Create a ToDoList where users can add, view and delete their todo tasks 


## 2. Design the Class System

- ToDoList owns a list of ToDo
  
```ruby
# File: lib/todo_list.rb
class ToDoList
  def initialize
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
  end

  def incomplete
    # Returns all non-done todos
  end

  def complete
    # Returns all complete todos
  end

  def give_up!
    # Marks all todos as complete
  end
end

# File: lib/todo.rb
class ToDo
  def initialize(task) # task is a string
    # ...
  end

  def task
    # Returns the task as a string

  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
  end
end
```

## 3. Create Examples as Integration Tests
```ruby
#1 
it 'Adds a task and returns this as incomplete' do 
    todolist = ToDoList.new
    todo = ToDo.new('Go shopping')
    todolist.add(todo)
    expect(todo.incomplete).to eq(['Go shopping'])
end 

#2 
it 'Adds multiple tasks and returns a list of incomplete todo tasks' do 
    todolist = ToDoList.new
    todo_1 = ToDo.new('Go shopping')
    todo_2 = ToDo.new('Meditate')
    todolist.add(todo)
    expect(todo.incomplete).to eq(['Go shopping', 'Meditate'])
end 

#3
it 'Marks a task as complete, and returns it as completed' do 
    todolist = ToDoList.new
    todo_1 = ToDo.new('Go shopping')  
    todo_1.mark_done!
    expect(ToDoList.complete).to eq(['Go shopping'])
end 

#4
it 'Marks two task as complete, and returns them as completed' do 
    todolist = ToDoList.new
    todo_1 = ToDo.new('Go shopping')  
    todo_2 = ToDo.new('Wash the car')  
    todo_1.mark_done!
    todo_2.mark_done!
    expect(ToDoList.complete).to eq(['Go shopping', 'Wash the car'])
end 

#5
it 'Adds two tasks, marks one as complete. Returns the completed and incomplete tasks' do 
    todolist = ToDoList.new
    todo_1 = ToDo.new('Go shopping')  
    todo_2 = ToDo.new('Wash the car')  
    todo_1.mark_done!
    expect(ToDoList.complete).to eq(['Go shopping'])
    expect(ToDoList.incomplete).to eq(['Wash the car'])
end 

#6 
it 'Marks all tasks as complete' do 
    todolist = ToDoList.new
    todo_1 = ToDo.new('Go shopping')  
    todo_2 = ToDo.new('Wash the car')  
    todolist.give_up!
    expect(ToDoList.complete).to eq(['Go shopping', 'Wash the car'])
end 

#7
it 'Returns false if the task is not done' do 
    todolist = ToDoList.new
    todo_1 = ToDo.new('Go shopping')  
    expect(todo_1.done?).to eq(false)
end 

#8 
it 'Returns true if the task is done' do 
    todolist = ToDoList.new
    todo_1 = ToDo.new('Go shopping')  
    todo_1.mark_done!
    expect(todo_1.done?).to eq(true)
end 

# EDGE CASES
# 9 
it 'Incomplete raises an error if there are no tasks' do 
    todolist = ToDoList.new
    expect {ToDoList.incomplete}.to raise_error("No tasks added!")
end 

# 10 
it 'Complete raises an error if there are no tasks' do 
    todolist = ToDoList.new
    expect {ToDoList.complete}.to raise_error("No tasks added!")
end 

# 11
it 'Complete raises an error if there are no tasks' do 
    todolist = ToDoList.new
    expect {ToDoList.give_up!}.to raise_error("No tasks added!")
end 




```

## 4. Create Examples as Unit Tests


```ruby
#1 Constructs a todo task   
it 'Constructs a todo task and returns this as a string' do
    todo = ToDo.new('Go for a run')
    expect(todo.task).to eq('Go for a run')
end

#2 Constructs multiple todo tasks
it 'Constructs todo tasks and returns them as a string' do
    todo_1 = ToDo.new('Go for a run')
    todo_2 = ToDo.new('Walk the dog')
    expect(todo.task).to eq('Go for a run, Walk the dog')
end 

# EDGE CASES
# 3 Non-string input
it 'Raises error if the input is not a string (array)' do 
    expect { todo_1 = ToDo.new(["Cake"])}.to raise_error("Please enter the task as a string!")
end

# 4
it 'Raises error if the input is not a string (array)' do 
    expect { todo_1 = ToDo.new(123)}.to raise_error("Please enter the task as a string!")
end

# 5 
it 'Raises an error if the task does not exist' do 
    todo = ToDo.new('Walk the dog')
    expect {todo_1.task}.to raise_error("This task does not exist")
end 

```

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._