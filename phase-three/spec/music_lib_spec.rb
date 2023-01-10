# File: spec/music_lib_spec.rb

require 'music_library'

RSpec.describe 'Music Library' do 
    context 'Using doubles to check expected behavior' do
        it 'Doubles: Adds one track, and returns this' do 
            track_double = (double(:fake_track, title: 'Halo', artist: 'Beyonce'))
            music_library = MusicLibrary.new 
            music_library.add(track_double)
            expect(music_library.all).to eq([track_double])
        end 

        it 'Doubles: Adds two tracks, and returns them' do 
            track_double_1 = (double(:fake_track, title: 'Halo', artist: 'Beyonce'))
            track_double_2 = (double(:fake_track, title: 'Hello', artist: 'Adele'))
            music_library = MusicLibrary.new 
            music_library.add(track_double_1)
            music_library.add(track_double_2)
            expect(music_library.all).to eq([track_double_1, track_double_2])
        end 

    end 
end 