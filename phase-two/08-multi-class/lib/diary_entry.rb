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
      if @contents.empty?
        return 0 
      else 
        return @contents.split(" ").length 
      end 
    end
  
    def reading_time(wpm)
      diary.reading_time
    end
  
  end