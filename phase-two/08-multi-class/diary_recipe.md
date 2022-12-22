# Diary + Diary Entry Multi-Class Planned Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

## 2. Design the Class System

```ruby
# File: lib/diary.rb
class Diary
  def initialize
  end

  def add(entry) # entry is an instance of DiaryEntry
    # Returns nothing
  end

  def all
    # Returns a list of instances of DiaryEntry
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

  def find_best_entry_for_reading_time(wpm, minutes)
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end

# File: lib/diary_entry.rb
class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    # ...
  end

  def title
    # Returns the title as a string
  end

  def contents
    # Returns the contents as a string
  end

  def count_words
    # Returns the number of words in the contents as an integer
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end
```

## 3. Create Examples as Integration Tests
```ruby
#1
it 'Returns an empty array when there are no diary entries' do 
    diaryentry = DiaryEntry.new('the title', '')
    diary = Diary.new
    diary.add(diaryentry)
    expect(diary.all).to eq([])
end 

#2
it 'Returns one entry of DiaryEntry' do 
    diaryentry = DiaryEntry.new('the title', 'the contents')
    diary = Diary.new
    diary.add(diaryentry)
    expect(diary.all).to eq(['the contents'])
end 

#3 
it 'Returns all contents of DiaryEntry in an array' do 
    diaryentry_1 = DiaryEntry.new('the title', 'the contents')
    diaryentry_2 = DiaryEntry.new('the title', 'second contents')
    diary = Diary.new
    diary.add(diaryentry_1)
    diary.add(diaryentry_2)
    expect(diary.all).to eq(['the contents', 'second contents'])
end 

#4  HINT: This method should make use of the `count_words` method on DiaryEntry.
it 'Returns 0 when there are no diary entries' do 
    diaryentry = DiaryEntry.new('the title', '')
    diary = Diary.new
    diary.add(diaryentry)
    expect(diary.count_words).to eq(0)
end 


#5
it 'Counts the words of contents in DiaryEntry' do 
    diaryentry = DiaryEntry.new('the title', 'the contents')
    diary = Diary.new
    diary.add(diaryentry)
    expect(diary.count_words).to eq(2)
end 

#6
it 'Counts the words of contents in DiaryEntry' do 
    diaryentry_1 = DiaryEntry.new('the title', 'the contents')
    diaryentry_2 = DiaryEntry.new('the title', 'second contents added')
    diary = Diary.new
    diary.add(diaryentry_1)
    diary.add(diaryentry_2)
    expect(diary.count_words).to eq(5)
end 


# EDGE CASES



```

## 4. Create Examples as Unit Tests

```ruby
# DiaryEntry
# 1
it 'Constructs a diary entry, and returns the title and contents' do
  diaryentry = DiaryEntry.new("The title", "The contents")
  expect(diaryentry.title).to eq("The title")
  expect(diaryentry.contents).to eq("The contents")
end 

#2
it 'Constructs a diary entry, and returns the number of words in contents' do
  diaryentry = DiaryEntry.new("The title", "The contents")
  expect(diaryentry.count_words).to eq(2)
end 

#3
it 'Longer entry: Constructs a diary entry, and returns the number of words in contents' do
  diaryentry = DiaryEntry.new("The title", "Longer passage " * 20)
  expect(diaryentry.count_words).to eq(40)
end

# EDGE CASE: 4 Integer input
it 'Prompts for a string input' do 
    diaryentry = DiaryEntry.new('the title', 123)
    expect{diaryentry}.to raise_error("Please entry a string")
end 

#5
it 'Returns 1 when the wpm is 60 and there are 60 words in the contents' do
  diaryentry = DiaryEntry.new("The title", "The contents " * 30)
  diary = Diary.new
  diary.add(diaryentry)
  expect(diary.readingtime(60)).to eq(1)
end 


# 6 ("the contents " * 30).split(" ").length
it 'Returns 10 when the wpm is 60 and there are 600 words in the contents' do
  diaryentry = DiaryEntry.new("The title", "The contents " * 300)
  diary = Diary.new
  diary.add(diaryentry)
  expect(diary.readingtime(60)).to eq(10)
end 

#7 EDGE CASE: Empty string
it 'Returns 0 when the wpm is 60 and there are 0 words in the contents' do
  diaryentry = DiaryEntry.new("The title", "")
  diary = Diary.new
  diary.add(diaryentry)
  expect(diary.readingtime(60)).to eq(0)
end 










# Diary not tested as this is covered in integration




```
