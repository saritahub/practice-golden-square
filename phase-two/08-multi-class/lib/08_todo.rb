# lib/08_todo.rb

class ToDo
    def initialize(task)
        @task = task
        
    end

    def incomplete
        return [@task]
    end 
end