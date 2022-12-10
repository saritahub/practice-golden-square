# ToDoList Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

Noun
- Task

Verbs 
- Add (task)
- List (tasks)
- Complete (mark task complete)
## 2. Design the Class Interface

```ruby
class ToDoList
  def initialize 
    # ...
  end

  def add(task) # task is a string
    # No return value
    # Throws error if the task is an empty string / not a string
  end

  def task_list
    # Returns incomplete tasks
  end 

  def mark_complete(task)
    # Throws an exception if no task is set OR if the task isn't in the list
    # Otherwise, removes the task from the task list
  end
end
```

## 3. Create Examples as Tests

```ruby
# 1: Throws an error if the task is an empty string
todolist = ToDoList.new
expect {todolist.add("")}.to raise_error("Please enter a string!")


# 2: Adds a task to the list, and returns the task list 
todolist = ToDoList.new
todolist.add("Walk the dog")
expect(todolist.task_list).to eq("Walk the dog")

# 3: Adds two tasks to the list, and returns the task list 
todolist = ToDoList.new
todolist.add("Walk the dog")
todolist.add("Go shopping")
expect(todolist.task_list).to eq("Walk the dog, Go shopping")

# 4: Marks a task as complete
todolist = ToDoList.new
todolist.add("Walk at 3PM")
todolist.add("Go shopping")
todolist.mark_complete("Walk at 3PM")
expect(todolist.task_list).to eq("Go shopping")

# 4: Raises an error if there are no tasks set
todolist = ToDoList.new
expect {todolist.mark_complete("Walk at 3PM")}.to raise_error("There are no tasks set!")

# 5: Raises an error if the task does not exist
todolist = ToDoList.new
todolist.add("Go shopping")
expect {todolist.mark_complete("Walk at 3PM")}.to raise_error("This task doesn't exist!")

# EDGE CASES
# 6: Raises an error if the task is not a string (array)
todolist = ToDoList.new
expect {todolist.add([""])}.to raise_error("Please enter a string!")

# 7: Raises an error if the task is not a string (integer)
todolist = ToDoList.new
expect {todolist.add(123)}.to raise_error("Please enter a string!")




```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._