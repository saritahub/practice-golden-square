require 'diary'
require 'diary_entry'

RSpec.describe "Diary Integration" do 
    context "Expected input" do 
        it 'Returns an empty array when there are no diary entries' do 
            diaryentry = DiaryEntry.new('', '')
            diary = Diary.new
            diary.add(diaryentry)
            expect(diary.all).to eq([''])
        end 

        it 'Returns one entry of DiaryEntry' do 
            diaryentry = DiaryEntry.new('the title', 'the contents')
            diary = Diary.new
            diary.add(diaryentry)
            expect(diary.all).to eq(['the contents'])
        end 

        it 'Returns all contents of DiaryEntry in an array' do 
            diaryentry_1 = DiaryEntry.new('the title', 'the contents')
            diaryentry_2 = DiaryEntry.new('the title', 'second contents')
            diary = Diary.new
            diary.add(diaryentry_1)
            diary.add(diaryentry_2)
            expect(diary.all).to eq(['the contents', 'second contents'])
        end 

        it 'Returns 1 when an empty string added' do 
            diaryentry = DiaryEntry.new('the title', '')
            diary = Diary.new
            diary.add(diaryentry)
            expect(diary.count_words).to eq(1)
        end 
    end 
end 