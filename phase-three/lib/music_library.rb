# File: music_library.rb

class MusicLibrary
    def initialize
        @all_tracks = []
        @matched_tracks = []
    end

    def add(track)
        @all_tracks.push(track)

    end

    def all 
        @all_tracks
    end 

    def search(keyword)
        @all_tracks.select { |track| track.matches?(keyword) }
    end
end