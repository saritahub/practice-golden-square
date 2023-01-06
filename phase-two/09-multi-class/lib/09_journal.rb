# File: lib/09_journal.rb

require '09_todolist.rb'

class Journal
    def initialize
        @all_entries = []
        @phone_numbers = []
        @task_list = []
    end 

    def add_journal(entry)
        @all_entries.push(entry)
    end 

    def add_task(task)
        @task_list.push(task)
    end 

    def all_entries
        return @all_entries
    end 

    def extract_phone_numbers
        @all_entries.each do |entry|
            @phone_numbers.push(entry.contents.scan(/\d{11}+/)).flatten!
        end
    end 

    def phone_numbers
        @phone_numbers
    end 
    
    def task_list 
        @task_list     
    end 
end 