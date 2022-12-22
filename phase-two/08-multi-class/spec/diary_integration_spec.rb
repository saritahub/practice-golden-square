require 'diary'
require 'diary_entry'

RSpec.describe "Diary Integration" do 
    context "Expected input" do 
        it 'Returns an empty array when there are no diary entries' do 
            diaryentry = DiaryEntry.new('', '')
            diary = Diary.new
            diary.add(diaryentry)
            expect(diary.all).to eq([])
        end 

        # it 'Returns one entry of DiaryEntry' do 
        #     diaryentry = DiaryEntry.new('the title', 'the contents')
        #     diary = Diary.new
        #     diary.add(diaryentry)
        #     expect(diary.all).to eq(['the contents'])
        # end 
    end 
end 