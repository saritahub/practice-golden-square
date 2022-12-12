require 'musictrack'

RSpec.describe MusicTrack do 
    context "#add" do 
        it "Fails if an empty string is input" do 
            musictrack = MusicTrack.new
            expect {musictrack.add("")}.to raise_error("Please enter music track with the format Title - Artist")
        end

        it "Fails if non-string input (array)" do 
            musictrack = MusicTrack.new
            expect {musictrack.add(["Dreamland - Glass Animals"])}.to raise_error("Please enter music track as a string")
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

        it "Add two music tracks, and lists them both" do 
            musictrack = MusicTrack.new
            musictrack.add("Toxic - Britney Spears")
            musictrack.add("High - 5SOS")
            expect(musictrack.list_tracks).to eq("Toxic - Britney Spears, High - 5SOS")
        end 
    end 
end 