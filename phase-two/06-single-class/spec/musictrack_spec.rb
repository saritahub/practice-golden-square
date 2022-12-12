require 'musictrack'

RSpec.describe MusicTrack do 
    context "#add" do 
        it "Fails if an empty string is input" do 
            musictrack = MusicTrack.new
            expect {musictrack.add("")}.to raise_error("Please enter music track with the format Title - Artist")
        end
    end 
end 