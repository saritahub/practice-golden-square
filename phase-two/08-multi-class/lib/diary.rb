# File: lib/diary.rb
class Diary
    def initialize
      @all_entries = []
    end
  
    def add(entry) 
      @all_entries.push(entry.contents)
    end
  
    def all
      @all_entries
    end
  
    def count_words
      return @all_entries.join(" ").split.length
    end
  
    def reading_time(wpm) 
      return count_words/wpm
    end
end