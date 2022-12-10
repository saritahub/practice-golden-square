class ToDoList
    def initialize
        @task_list = [] 
    end

    def add(task)
        fail "Please enter a string!" if task.empty?

        @task_list.push(task)
    end 

    def task_list
        @task_list.join(", ")
    end 
end 