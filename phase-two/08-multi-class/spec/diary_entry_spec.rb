require 'diary'
require 'diary_entry'

RSpec.describe "Diary Entry" do 
    it 'Constructs a diary entry, and returns the title and contents' do
        diaryentry = DiaryEntry.new("The title", "The contents")
        expect(diaryentry.title).to eq("The title")
        expect(diaryentry.contents).to eq("The contents")
    end 

    it 'Constructs a diary entry, and returns the number of words in contents' do
        diaryentry = DiaryEntry.new("The title", "The contents")
        expect(diaryentry.count_words).to eq(2)
      end 
end 