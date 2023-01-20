# File: lib/secret_diary.rb

class SecretDiary
    def initialize(diary) 
        @locked = true 
        @diary = diary 
    end
  
    def read
        @locked == true ? 'Go away!' : @diary.read
    end
  
    def lock
        @locked = true 
    end
  
    def unlock
        @locked = false 
    end
  end