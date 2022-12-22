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
      # Returns the number of words in the contents as an integer
    end
  
    def reading_time(wpm) # wpm is an integer representing
                          # the number of words the user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # for the contents at the given wpm.
    end
  
  end