require '09_journal_entry' 
require '09_journal'

RSpec.describe 'Journal Entry' do 
    context 'Expected behaviour' do 
        it 'Creates a diary entry and returns it in an array' do 
            diaryentry = JournalEntry.new('the title', 'the contents')
            diary = Journal.new 
            diary.add(diaryentry)
            expect(diary.all_entries).to eq([diaryentry])
        end 

        it 'Creates a multiple diary entries and returns them in an array' do 
            diaryentry_1 = JournalEntry.new('the title', 'the contents')
            diaryentry_2 = JournalEntry.new('cat', 'climbed the tree')
            diary = Journal.new 
            diary.add(diaryentry_1)
            diary.add(diaryentry_2)
            expect(diary.all_entries).to eq([diaryentry_1, diaryentry_2])
        end 

        it 'Extracts a phone number from the diary entry and returns this in an array' do 
            diaryentry = JournalEntry.new('Phone number included...', '07000000000')
            diary = Journal.new 
            diary.add(diaryentry)
            diary.extract_phone_numbers
            expect(diary.phone_numbers).to eq(['07000000000'])
        end 

        it 'Longer string: Extracts a phone number from the diary entry and returns this in an array' do 
            diaryentry = JournalEntry.new('Phone number included...', 'The phone number is 07000000000')
            diary = Journal.new 
            diary.add(diaryentry)
            diary.extract_phone_numbers
            expect(diary.phone_numbers).to eq(['07000000000'])
        end 



    end 






end 