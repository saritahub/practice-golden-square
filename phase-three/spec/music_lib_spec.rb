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

        it 'Doubles: Returns the track that matches the keyword `Halo`' do
            track_double = double(:fake_track, title: 'Halo', artist: 'Beyonce')
            expect(track_double).to receive(:matches?).with('Halo').and_return(true)
            music_library = MusicLibrary.new 
            music_library.add(track_double)
            expect(music_library.search('Halo')).to eq([track_double])
        end 

        it 'Doubles: Returns the track that matches the keyword `Beyonce`' do
            track_double = (double(:fake_track, title: 'Halo', artist: 'Beyonce'))
            expect(track_double).to receive(:matches?).with('Beyonce').and_return(true)
            music_library = MusicLibrary.new 
            music_library.add(track_double)
            expect(music_library.search('Beyonce')).to eq([track_double])
        end 

        it 'Doubles: Only returns matching tracks when multiple added' do 
            track_double_1 = (double(:fake_track, title: 'Halo', artist: 'Beyonce'))
            track_double_2 = (double(:fake_track, title: 'Hello', artist: 'Adele'))
            expect(track_double_1).to receive(:matches?).with('Halo').and_return(true)
            expect(track_double_2).to receive(:matches?).with('Halo').and_return(false)
            music_library = MusicLibrary.new 
            music_library.add(track_double_1)
            music_library.add(track_double_2)
            expect(music_library.all).to eq([track_double_1, track_double_2])
            expect(music_library.search('Halo')).to eq([track_double_1])
        end 

        it 'Doubles: Returns an empty array if no that matching tracks' do
            track_double = (double(:fake_track, title: 'Halo', artist: 'Beyonce'))
            expect(track_double).to receive(:matches?).with('Pear').and_return(false)
            music_library = MusicLibrary.new 
            music_library.add(track_double)
            expect(music_library.search('Pear')).to eq([])
        end 
    end 
end 