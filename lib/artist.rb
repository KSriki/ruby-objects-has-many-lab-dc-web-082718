require "pry"
class Artist

    attr_accessor :name

    #probably easier to keep a count but just in case for future use
    @@all_songs = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        @songs << song
        @@all_songs << song
        song.artist = self

    end

    def songs
        @songs
    end

    def add_song_by_name(name)
        song = Song.new(name)
        self.add_song(song)
    end


    def self.song_count
        @@all_songs.length
    end




end
