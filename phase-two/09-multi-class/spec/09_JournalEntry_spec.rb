require '09_journal_entry' 

RSpec.describe 'Journal Entry' do 
    context 'Expected behaviour' do 
        it 'Constructs a diary entry and returns this as a string' do 
            diaryentry = JournalEntry.new('the title', 'the contents')
            expect(diaryentry.title).to eq('the title')
            expect(diaryentry.contents).to eq('the contents')
        end 
    end 
end 