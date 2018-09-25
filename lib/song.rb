require 'pry'

class Song

  attr_reader :name, :artist, :genre

     @@count = 0
     @@songs = []
     @@genres = []
     @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @@count += 1
    @@genre = genre
    @@artist = artist
    @@songs << self.name
    @@genres << self.genre
    @@artists << self.artist

    end

    def self.count
       @@count
    end

    def self.artists
       @@artists.uniq
    end

    def self.songs
       @@songs.uniq
    end

    def self.genres
       @@genres.uniq
    end

  end
