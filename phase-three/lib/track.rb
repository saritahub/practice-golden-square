# File: track.rb 

class Track 
    def initialize(title, artist) 
        @title = title
        @artist = artist 
    end 

    def matches?(keyword)
        if keyword.downcase == @title.downcase || keyword.downcase == @artist.downcase
            return true 
        else
            return false
        end 
    end 
end 