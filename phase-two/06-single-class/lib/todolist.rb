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

    def mark_complete(task)
        fail "There are no tasks set!" if @task_list.empty?
        fail "This task does not exist!" if !@task_list.include?(task)
    end 
end 