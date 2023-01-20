# File: spec/secret_diary_int_spec.rb

require 'secret_diary'

RSpec.describe 'Mocked Diary for Secret Diary Integration' do 
    it 'Mock: Returns Go Away! if the diary is locked' do 
        mock_diary = double(:mock_diary, contents: 'Cake', locked: true)
        secret_diary = SecretDiary.new(mock_diary)
        expect(secret_diary.read).to eq('Go away!')
    end 

end 