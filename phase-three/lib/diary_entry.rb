# File: lib/diary_entry.rb

class DiaryEntry
    def initialize(title, contents) 
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