class MusicTrack
    def initialize
        @tracks = []
    end

    def add(track)
        fail "Please enter music track as a string" if track.class != String
        fail "Please enter music track with the format Title - Artist" if track.empty?
        fail "Please enter music track with the format Title - Artist" if !track.include?("-")

        @tracks.push(track)
    end 

    def list_tracks
        fail "No tracks added." if @tracks.empty?

        @tracks.join(", ")
    end 
end