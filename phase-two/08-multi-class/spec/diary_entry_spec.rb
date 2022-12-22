require 'diary'
require 'diary_entry'

RSpec.describe "Diary Entry" do 
    it 'Constructs a diary entry, and returns the title and contents' do
        diaryentry = DiaryEntry.new("The title", "The contents")
        expect(diaryentry.title).to eq("The title")
        expect(diaryentry.contents).to eq("The contents")
    end 
end 