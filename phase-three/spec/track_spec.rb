# File: spec/track_spec.rb

require 'track'

RSpec.describe 'Track' do 
    context 'Expected behaviour' do 

        context '#matches?(keyword)' do 
            it 'Creates a track, and returns true if the keyword matches the title' do 
                track = Track.new('Halo', 'Beyonce')
                expect(track.matches?('Halo')).to eq(true)
            end 

            it 'Creates a track, and returns true if the keyword matches the artist' do 
                track = Track.new('Halo', 'Beyonce')
                expect(track.matches?('Beyonce')).to eq(true)
            end 

            it 'Creates a track, and returns false if the keyword does not match the artist or title' do 
                track = Track.new('Halo', 'Beyonce')
                expect(track.matches?('Adele')).to eq(false)
            end 
            
        end 
    end 

end 