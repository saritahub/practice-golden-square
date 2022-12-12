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
            expect {musictrack.list}.to raise_error("No tracks added.") 
        end 
    end 
end 