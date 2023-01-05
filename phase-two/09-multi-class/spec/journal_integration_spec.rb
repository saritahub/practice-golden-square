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



    end 






end 