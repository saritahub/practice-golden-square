# File: lib/09_journal.rb

require '09_todolist.rb'

class Journal
    def initialize
        @all_entries = []
        @phone_numbers = []
        @task_list = []
        @all_contents = []
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
           if entry.contents.scan(/\d+/).join(" ").length == 11
                @phone_numbers.push(entry.contents.scan(/\d{11}+/)).flatten!
           end 
        end
    end 

    def phone_numbers
        fail 'No phone numbers present in your diary entries!' if @phone_numbers.empty?
        @phone_numbers
    end 
    
    def task_list 
        @task_list     
    end 
end 