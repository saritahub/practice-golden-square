# File: lib/secret_diary.rb

class SecretDiary
    def initialize(diary) 
        @locked = true 
        @diary_entries = []
        @diary_entries.push(diary) 
    end
  
    def read
        @locked == true ? 'Go away!' : @diary_entries.map { |entry| entry.read }.join 
    end
  
    def lock
        @locked = true 
    end
  
    def unlock
        @locked = false 
    end
  end