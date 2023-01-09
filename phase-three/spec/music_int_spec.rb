# File: spec/music_int_spec.rb

require 'music_library'
require 'track'

RSpec.describe 'Music Library Integration' do 
    context 'Expected behavior' do 
        it 'Adds one track, and returns this' do 
            track = Track.new('Halo', 'Beyonce')
            music_library = MusicLibrary.new 
            music_library.add(track)
            expect(music_library.all).to eq([track])
        end 
    end 
end 