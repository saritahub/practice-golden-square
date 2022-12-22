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
  
    def count_words
      @contents.empty? ? 0 : @contents.split(" ").length 
    end
  
    def reading_time(wpm)
      (count_words/wpm.to_f).ceil
    end
  
  end