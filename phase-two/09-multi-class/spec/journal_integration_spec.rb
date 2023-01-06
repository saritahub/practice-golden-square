require '09_journal_entry' 
require '09_journal'

RSpec.describe 'Journal Entry' do 
    context 'Expected behaviour' do 
        it 'Creates a diary entry and returns it in an array' do 
            diaryentry = JournalEntry.new('the title', 'the contents')
            diary = Journal.new 
            diary.add_journal(diaryentry)
            expect(diary.all_entries).to eq([diaryentry])
        end 

        it 'Creates a multiple diary entries and returns them in an array' do 
            diaryentry_1 = JournalEntry.new('the title', 'the contents')
            diaryentry_2 = JournalEntry.new('cat', 'climbed the tree')
            diary = Journal.new 
            diary.add_journal(diaryentry_1)
            diary.add_journal(diaryentry_2)
            expect(diary.all_entries).to eq([diaryentry_1, diaryentry_2])
        end 

        it 'Extracts a phone number from the diary entry and returns this in an array' do 
            diaryentry = JournalEntry.new('Phone number included...', '07000000000')
            diary = Journal.new 
            diary.add_journal(diaryentry)
            diary.extract_phone_numbers
            expect(diary.phone_numbers).to eq(['07000000000'])
        end 

        it 'Longer string: Extracts a phone number from the diary entry and returns this in an array' do 
            diaryentry = JournalEntry.new('Phone number included...', 'The phone number is 07000000000')
            diary = Journal.new 
            diary.add_journal(diaryentry)
            diary.extract_phone_numbers
            expect(diary.phone_numbers).to eq(['07000000000'])
        end 

        it 'Extracts multiple phone numbers from the diary entries and returns them in an array' do 
            diaryentry_1 = JournalEntry.new('Phone number included...', 'The phone number is 07000000000')
            diaryentry_2 = JournalEntry.new('Another phone number included...', 'The phone number is 07909090909')
            diary = Journal.new 
            diary.add_journal(diaryentry_1)
            diary.add_journal(diaryentry_2)
            diary.extract_phone_numbers
            expect(diary.phone_numbers).to eq(['07000000000', '07909090909'])
        end 
    end 

    context 'Edge cases' do 
        it 'Prompts for a string input for the diary entry title' do 
            expect { diaryentry = JournalEntry.new(123, 'contents')}.to raise_error 'Please enter a string with 1 or more characters for the title'
        end 

        it 'Prompts for a string input for the diary entry contents' do 
            expect { diaryentry = JournalEntry.new('the title', 123)}.to raise_error 'Please enter a string with 1 or more characters for the contents'
        end 

        it 'Prompts for a longer input if the diary entry title is empty' do 
            expect { diaryentry = JournalEntry.new('', 'contents')}.to raise_error 'Please enter a string with 1 or more characters for the title'
        end 

        it 'Prompts for a longer input if the diary entry contents is empty' do 
            expect { diaryentry = JournalEntry.new('the title', '')}.to raise_error 'Please enter a string with 1 or more characters for the contents'
        end 

        it 'Ignores numbers less than 11 numbers long the diary entries' do 
            diaryentry_1 = JournalEntry.new('Phone number included...', 'The phone number is 07000000000')
            diaryentry_2 = JournalEntry.new('False phone number included...', 'The phone number is 0790')
            diary = Journal.new 
            diary.add_journal(diaryentry_1)
            diary.add_journal(diaryentry_2)
            diary.extract_phone_numbers
            expect(diary.phone_numbers).to eq(['07000000000'])
        end 

        it 'Ignores numbers more than 11 numbers long the diary entries' do 
            diaryentry_1 = JournalEntry.new('Phone number included...', 'The phone number is 07000000000')
            diaryentry_2 = JournalEntry.new('False phone number included...', 'The phone number is 0790909090992313')
            diary = Journal.new 
            diary.add_journal(diaryentry_1)
            diary.add_journal(diaryentry_2)
            diary.extract_phone_numbers
            expect(diary.phone_numbers).to eq(['07000000000'])
        end 

        it 'Prompts to add a phone number if no numbers in diary entry' do 
            diaryentry = JournalEntry.new('False phone number included...', 'The phone number is 0790909090992313')
            diary = Journal.new 
            diary.add_journal(diaryentry)
            expect {diary.phone_numbers}.to raise_error('No phone numbers present in your diary entries!')
        end 

        

    end 





end 