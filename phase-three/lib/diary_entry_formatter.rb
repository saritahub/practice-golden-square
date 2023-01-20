# File: lib/diary_entry_formatter.rb

class DiaryEntryFormatter
    def initialize(diary_entry) 
        @diary_entries = []
        @diary_entries.push(diary_entry)
    end
  
    def format
      @diary_entries.map do |entry|
        "#{entry.title}: #{entry.contents}"
      end.join
    end
  end