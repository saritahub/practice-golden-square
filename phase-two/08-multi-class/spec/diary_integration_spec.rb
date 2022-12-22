require 'diary'
require 'diary_entry'

RSpec.describe "Diary Integration" do 
    context "Expected input" do 
        it 'Returns an empty array when there are no diary entries' do 
            diaryentry = DiaryEntry.new('', '')
            diary = Diary.new
            diary.add(diaryentry)
            expect(diary.all).to eq([diaryentry])
        end 

        it 'Returns one entry of DiaryEntry' do 
            diaryentry = DiaryEntry.new('the title', 'the contents')
            diary = Diary.new
            diary.add(diaryentry)
            expect(diary.all).to eq([diaryentry])
        end 

        it 'Returns all contents of DiaryEntry in an array' do 
            diaryentry_1 = DiaryEntry.new('the title', 'the contents')
            diaryentry_2 = DiaryEntry.new('the title', 'second contents')
            diary = Diary.new
            diary.add(diaryentry_1)
            diary.add(diaryentry_2)
            expect(diary.all).to eq([diaryentry_1, diaryentry_2])
        end 

        it 'Returns 0 when an empty string added' do 
            diaryentry = DiaryEntry.new('the title', '')
            diary = Diary.new
            diary.add(diaryentry)
            expect(diary.count_words).to eq(0)
        end 

        it 'Counts the words of contents in DiaryEntry' do 
            diaryentry = DiaryEntry.new('the title', 'the contents')
            diary = Diary.new
            diary.add(diaryentry)
            expect(diary.count_words).to eq(2)
        end 

        it 'Returns 0 when the wpm is 60 and there are 0 words in the contents' do
            diaryentry = DiaryEntry.new("The title", "")
            diary = Diary.new
            diary.add(diaryentry)
            expect(diary.reading_time(60)).to eq(0.0)
        end 

        xit 'Returns 10 when the wpm is 60 and there are 600 words in the contents' do
            diaryentry = DiaryEntry.new("The title", "HI " * 600)
            diary = Diary.new
            diary.add(diaryentry)
            expect(diary.reading_time(60)).to eq(10.0)
        end 

        xit 'Returns 10 when the wpm is 60 and there are 600 words in the contents' do
            diaryentry = DiaryEntry.new("The title", "HI " * 600)
            diary = Diary.new
            diary.add(diaryentry)
            expect(diaryentry.reading_time(60)).to eq(10.0)
        end 
    end 
end 