# File: spec/secret_diary_int_spec.rb

require 'secret_diary'
require 'diary'

RSpec.describe 'Secret Diary Integreation' do 
    it 'Returns Go Away! if the diary is locked' do 
        diary = Diary.new("Music for the soul")
        secret_diary = SecretDiary.new(diary)
        expect(secret_diary.read).to eq("Go away!")
    end 
end 