# File: lib/secret_diary.rb

class SecretDiary
    def initialize(diary) 
        @locked = true 
        @diary = diary 
    end
  
    def read
        if @locked == true
            'Go away!'
        else 
            @diary.read
        end 
    end
  
    def lock
        @locked = true 
    end
  
    def unlock
        @locked = false 
    end
  end