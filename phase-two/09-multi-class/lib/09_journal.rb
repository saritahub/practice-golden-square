# File: lib/09_journal.rb

class Journal
    def initialize
        @all_entries = []
    end 

    def add(entry)
        @all_entries.push(entry)
    end 

    def all_entries
        return @all_entries
    end 
end 