# File: lib/09_journal.rb

class Journal
   def add(entry)
    @entry = entry 
   end 

   def all_entries
    return [@entry]
   end 
end 