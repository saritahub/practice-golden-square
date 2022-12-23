# File: lib/08_todo.rb

class ToDo
    def initialize(task)
        fail "Please enter the task as a string!" if task.class != String
        @task = task
        @done = false
    end

    def task
        @task
    end 

    def mark_done!
        @done = true 
    end 

    def done?
        @done
    end
  
end
