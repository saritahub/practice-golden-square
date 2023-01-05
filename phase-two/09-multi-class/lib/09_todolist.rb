#File 09_todolist.rb

class TaskList
    def initialize
        @task_list = []
    end

    def add(task)
        @task_list.push(task)
    end 

    def task_list
        @task_list
    end 
end