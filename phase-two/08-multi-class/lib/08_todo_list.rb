# File: lib/08_todo_list.rb
require '08_todo'

class ToDoList
    def initialize
        @task_list = []
    end

    def add(task)
        @task = task 
        @task_list.push(@task)
    end

    def incomplete
        return @task_list
    end 
end