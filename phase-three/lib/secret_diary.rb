# File: lib/secret_diary.rb

class SecretDiary
    def initialize(diary) 
        @locked = true 
        @diary_entries = []
        @diary_entries.push(diary) 
    end
  
    def read
        if @locked == true 
            return "Go away!"
        else 
            return @diary_entries.map do |entry|
                entry.read
            end.join 
        end 
      # Raises the error "Go away!" if the diary is locked
      # Returns the diary's contents if the diary is unlocked
      # The diary starts off locked
    end
  
    def lock
      # Locks the diary
      # Returns nothing
    end
  
    def unlock
        @locked = false 
    end
  end