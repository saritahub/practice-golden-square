# File: lib/diary.rb
class Diary
    def initialize
    end
  
    def add(entry) # entry is an instance of DiaryEntry
      # Returns nothing
    end
  
    def all
      # Returns a list of instances of DiaryEntry
      return []
    end
  
    def count_words
      # Returns the number of words in all diary entries
      # HINT: This method should make use of the `count_words` method on DiaryEntry.
    end
  
    def reading_time(wpm) # wpm is an integer representing
                          # the number of words the user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # if the user were to read all entries in the diary.
    end
end