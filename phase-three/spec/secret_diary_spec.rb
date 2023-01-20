# File: spec/secret_diary_int_spec.rb

require 'secret_diary'

RSpec.describe 'Mocked Diary for Secret Diary Integration' do 
    it 'Mock: Returns Go Away! if the diary is locked' do 
        mock_diary = double(:mock_diary, contents: 'Cake')
        secret_diary = SecretDiary.new(mock_diary)
        expect(secret_diary.read).to eq('Go away!')
    end 

    xit 'Returns diary contents if the diary is locked' do 
        mock_diary = double(:mock_diary, contents: 'Walk in the dark', locked: false)
        secret_diary = SecretDiary.new(mock_diary)
        expect(secret_diary.read).to eq('Walk in the dark')
    end 

end 