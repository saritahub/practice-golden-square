# MusicTracks Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

Noun
- Music track

Verbs 
- Add (track)
- List (tracks)

## 2. Design the Class Interface

```ruby
class MusicTrack
    def initalize 
        #Stores a list of music tracks
    end 

    def add(track)
        #Adds a track
    end

    def list_tracks
        #Displays a list of tracks that the user has listened to
    end

end 

```

## 3. Create Examples as Tests

```ruby
# 1: Fail: Empty string
musictrack = MusicTrack.new
expect {musictrack.add("")}.to raise_error("Please enter music track with the format Title - Artist")

#2: Add a music track, and list this
musictrack = MusicTrack.new
musictrack.add("Toxic - Britney Spears")
expect(music.list_tracks).to eq("Toxic - Britney Spears")

#3: Add two music tracks, and list them both
musictrack = MusicTrack.new
musictrack.add("Toxic - Britney Spears")
musictrack.add("High - 5SOS")
expect(music.list_tracks).to eq("Toxic - Britney Spears, High - 5SOS")

#4: Checks the format of the music tracks as title - artist
musictrack = MusicTrack.new
expect {musictrack.add("Dreamland Glass Animals")}.to raise_error("Please enter music track with the format Title - Artist")

#5: Edge cases: Fails if non-string input (array)
musictrack = MusicTrack.new
expect {musictrack.add(["Dreamland - Glass Animals"])}.to raise_error("Please enter music track as a string")

#6: Edge cases: Fails if non-string input (integer)
musictrack = MusicTrack.new
expect {musictrack.add(123)}.to raise_error("Please enter music track as a string")

#7: List fails if there are no tracks
musictrack = MusicTrack.new
expect {musictrack.list}.to raise_error("No tracks added.")

```

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._