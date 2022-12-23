# File: lib/08_todo_list.rb
require '08_todo'

class ToDoList
    def initialize
        @all_tasks = []
        @completed_tasks = [] 
        @incomplete_tasks = []
    end

    def add(task)
        @all_tasks.push(task)
    end

    def complete
        fail_conditions
        @all_tasks.each do |task|
            @completed_tasks.push(task) if task.done? == true 
        end
        @completed_tasks
    end 

    def incomplete
        fail_conditions
        @all_tasks.each do |task|
            @incomplete_tasks.push(task) if task.done? == false
        end
        @incomplete_tasks
    end 

    def give_up!
        fail_conditions
        @all_tasks.each do |task|
            task.mark_done!
        end 
    end

    private
    def fail_conditions 
        fail "No tasks added!" if @all_tasks.empty?
    end 
end