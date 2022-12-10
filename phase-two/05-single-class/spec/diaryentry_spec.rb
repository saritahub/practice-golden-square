require 'diaryentry'

RSpec.describe "DiaryEntry" do 
    context "#title" do 
        it "Returns an empty string as the title" do 
            diaryentry = DiaryEntry.new("", "The contents")
            expect(diaryentry.title).to eq("")
        end 
    end 

end 