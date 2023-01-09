# File: music_library.rb

class MusicLibrary
    def initialize
        @all_tracks = []
        @matching_tracks = []
    end

    def add(track)
        @all_tracks.push(track)

    end

    def all 
        @all_tracks
    end 

    def search(keyword)
        @all_tracks.map do |track|
          if track.title.downcase == keyword.downcase || track.artist.downcase == keyword.downcase
            @matching_tracks.push(track)
            return @matching_tracks 
          else 
            return 'No matching tracks'
          end 
        end 
    end
end