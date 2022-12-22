# File: lib/diary_entry.rb
class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title
      @contents = contents
    end
  
    def title
      @title
    end
  
    def contents
      @contents
    end
  
    def count_words
      return @contents.split(" ").length 
    end
  
    def reading_time(wpm)
      
    end
  
  end