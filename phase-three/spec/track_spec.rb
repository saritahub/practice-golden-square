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
        end 
    end 

end 