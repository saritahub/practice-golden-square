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
        #Extracts numbers that have 11 digits only
        @all_entries.each do |entry| 
           if entry.contents.scan(/\d+/).join(" ").length == 11
                @phone_numbers.push(entry.contents.scan(/\d{11}+/)).flatten!
           end 
        end


        # @all_entries.each do |entry|
        #     @phone_numbers.push(entry.contents.scan(/\d{11}+/)).flatten!
        # end
    end 

    def phone_numbers
        @phone_numbers
    end 
    
    def task_list 
        @task_list     
    end 
end 