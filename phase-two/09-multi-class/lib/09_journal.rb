# File: lib/09_journal.rb

class Journal
    def initialize
        @all_entries = []
        @phone_numbers = []
    end 

    def add(entry)
        @all_entries.push(entry)
    end 

    def all_entries
        return @all_entries
    end 

    # def extract_phone_numbers
    #    p@all_entries.contents 
       
    #    #.each do |entry|
    #         p "This is the entry: #{entry}" 
    #    end 
    
    # end 

    # def phone_numbers
    #     @phone_numbers
    # end 
end 