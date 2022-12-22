# File: lib/diary.rb
class Diary
    def initialize
      @all_entries = []
    end
  
    def add(entry) 
      @all_entries.push(entry)
    end
  
    def all
      p @all_entries
    end
  
    def count_words
      return @all_entries.map do |entry|
          entry.count_words
      end.sum
    end
  
    def reading_time(wpm) 
      p (count_words/wpm).to_f
    end
end