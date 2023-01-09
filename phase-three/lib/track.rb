# File: track.rb 

class Track 
    def initialize(title, artist) 
        @title = title
        @artist = artist 
    end 

    def matches?(keyword)
        keyword.downcase == @title.downcase || keyword.downcase == @artist.downcase ? true : false 
    end 
end 