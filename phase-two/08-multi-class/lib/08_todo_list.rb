# File: lib/08_todo_list.rb
require '08_todo'

class ToDoList
    def initialize
        @all_tasks = []
        @completed_tasks = [] 
    end

    def add(task)
        @task = task 
        @all_tasks.push(@task)
    end

    def incomplete
        return @all_tasks
    end 

    def complete
        @all_tasks.each do |task|
            if task.mark_done! == true
                @completed_tasks.push(task)
            end 
        end 
        return @completed_tasks
    end 
end