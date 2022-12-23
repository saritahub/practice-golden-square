# File: lib/08_todo.rb

class ToDo
    def initialize(task)
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
        return @done
    end
  
end
