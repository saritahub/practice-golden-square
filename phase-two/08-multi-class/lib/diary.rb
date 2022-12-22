# File: lib/diary.rb
class Diary
    def initialize
      @all_entries = []
    end
  
    def add(entry) 
      @all_entries.push(entry)
    end
  
    def all
      @all_entries
    end
  
    def count_words
      #This is using count_words method from DiaryEntry
      # Try this with map 
      @all_entries.sum(&:count_words)
    end
  
    def reading_time(wpm) 
      (count_words/wpm.to_f).ceil
    end
end