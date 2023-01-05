# File: lib/09_journal_entry.rb

class JournalEntry
    def initialize(title, contents)
        fail 'Please enter a string with 1 or more characters for the title' if title.class != String || title.empty?
        fail 'Please enter a string with 1 or more characters for the contents' if contents.class != String || contents.empty?
        
        @title = title
        @contents = contents 
    end 

    def title 
        @title 
    end 

    def contents 
        @contents
    end 
end 