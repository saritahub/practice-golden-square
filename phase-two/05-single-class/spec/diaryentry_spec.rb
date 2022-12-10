require 'diaryentry'

RSpec.describe "DiaryEntry" do 
    context "#title" do 
        it "Returns an empty string as the title" do 
            diaryentry = DiaryEntry.new("", "The contents")
            expect(diaryentry.title).to eq("")
        end 

        it "Returns a string as the title" do 
            diaryentry = DiaryEntry.new("The title", "The contents")
            expect(diaryentry.title).to eq("The title")
        end 
    end 

    context "#contents" do 
        it "Returns an empty string as the contents" do 
            diaryentry = DiaryEntry.new("The title", "")
            expect(diaryentry.contents).to eq("")
        end 

        it "Returns a string as the contents" do 
            diaryentry = DiaryEntry.new("The title", "The contents")
            expect(diaryentry.contents).to eq("The contents")
        end 
    end 

    context "#count_words" do 
        it "Returns the number of words in the contents as an integer (0) when the contents is an empty string" do 
            diaryentry = DiaryEntry.new("The title", "")
            expect(diaryentry.count_words).to eq(0)
        end 

        it "Returns the number of words in the contents as 2" do 
            diaryentry = DiaryEntry.new("The title", "The contents")
            expect(diaryentry.count_words).to eq(2)
        end 
    end 

    context "#reading_time(wpm)" do 
        it "Returns an integer (2) to represent the estimated reading time for the contents at the given wpm" do 
            diaryentry = DiaryEntry.new("The title", "The contents " * 200)
            expect(diaryentry.reading_time(200)).to eq(2)
        end 
    end 

    

end 