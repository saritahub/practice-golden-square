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
    end
  
    def lock
        @locked = true 
    end
  
    def unlock
        @locked = false 
    end
  end