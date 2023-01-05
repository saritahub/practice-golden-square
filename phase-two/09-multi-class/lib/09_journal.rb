# File: lib/09_journal.rb

# require 'phase-two/09-multi-class/lib/09_journal_entry.rb' 

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

    def extract_phone_numbers
        @all_entries.each do |entry|
            @phone_numbers.push(entry.contents.scan(/\d{11}+/)).flatten!
        end
    end 

    def phone_numbers
        @phone_numbers
    end 
end 