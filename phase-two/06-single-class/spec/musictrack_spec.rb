require 'musictrack'

RSpec.describe MusicTrack do 
    context "#add" do 
        it "Fails if an empty string is input" do 
            musictrack = MusicTrack.new
            expect {musictrack.add("")}.to raise_error("Please enter music track with the format Title - Artist")
        end
    end 

    context "#list" do 
        it "List fails if there are no tracks" do 
            musictrack = MusicTrack.new
            expect {musictrack.list_tracks}.to raise_error("No tracks added.") 
        end 

        it "Adds a music track, and lists this" do 
            musictrack = MusicTrack.new
            musictrack.add("Toxic - Britney Spears")
            expect(musictrack.list_tracks).to eq("Toxic - Britney Spears")
        end 
    end 
end 