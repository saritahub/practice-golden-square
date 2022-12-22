require 'diary'
require 'diary_entry'

RSpec.describe "Diary Integration" do 
    context "Expected input" do 
        it 'Returns an empty array when there are no diary entries' do 
            diaryentry = DiaryEntry.new('the title', '')
            diary = Diary.new
            diary.add(diaryentry)
            expect(diary.all).to eq([])
        end 
    end 
end 