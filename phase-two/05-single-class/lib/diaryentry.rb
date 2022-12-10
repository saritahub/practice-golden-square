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
      @contents.split(" ").length 
    end
  
    def reading_time(wpm) 
      (count_words.to_f / wpm).ceil
    end
  
    def reading_chunk(wpm, minutes)
        words = wpm * minutes
        if reading_time(wpm) <= words 
            return @contents 
        else 
            @contents.split(" ").slice(minutes, words).join(" ")
        end 
    end 

  end