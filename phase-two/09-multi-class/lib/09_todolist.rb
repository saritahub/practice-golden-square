#File 09_todolist.rb

class TaskList
    def initialize
        @task_list = []
    end

    def add(task)
        @task_list.push(task)
    end 

    def task_list
    fail 'No tasks added!' if @task_list.empty?
        @task_list
    end 
end