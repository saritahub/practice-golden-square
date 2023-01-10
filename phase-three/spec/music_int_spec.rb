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

        it 'Adds two tracks, and returns them' do 
            track_1 = Track.new('Halo', 'Beyonce')
            track_2 = Track.new('Hello', 'Adele')
            music_library = MusicLibrary.new 
            music_library.add(track_1)
            music_library.add(track_2)
            expect(music_library.all).to eq([track_1, track_2])
        end 

        it 'Returns the track that matches the keyword `Halo`' do
            track = Track.new('Halo', 'Beyonce')
            music_library = MusicLibrary.new 
            music_library.add(track)
            expect(music_library.search('Halo')).to eq([track])
        end 

        it 'Returns the track that matches the keyword `Beyonce`' do
            track = Track.new('Halo', 'Beyonce')
            music_library = MusicLibrary.new 
            music_library.add(track)
            expect(music_library.search('Beyonce')).to eq([track])
        end 
        
        it 'Only returns matching tracks when multiple added' do 
            track_1 = Track.new('Halo', 'Beyonce')
            track_2 = Track.new('Bluebird', 'Alexis Ffrench')
            music_library = MusicLibrary.new 
            music_library.add(track_1)
            music_library.add(track_2)
            expect(music_library.all).to eq([track_1, track_2])
            expect(music_library.search('Halo')).to eq([track_1])
        end 

        it 'Only returns matching tracks when multiple added' do 
            track_1 = Track.new('Hello', 'Adele')
            track_2 = Track.new('Bluebird', 'Alexis Ffrench')
            music_library = MusicLibrary.new 
            music_library.add(track_1)
            music_library.add(track_2)
            expect(music_library.all).to eq([track_1, track_2])
            expect(music_library.search('Bluebird')).to eq([track_2])
        end 

        it 'Returns an empty array if no that matching tracks' do
            track = Track.new('Halo', 'Beyonce')
            music_library = MusicLibrary.new 
            music_library.add(track)
            expect(track.matches?('Pear')).to eq(false)
            expect(music_library.search('Pear')).to eq([])
        end 

    end 
end 