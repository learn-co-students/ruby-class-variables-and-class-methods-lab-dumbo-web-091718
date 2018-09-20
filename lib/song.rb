require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    hash = {}

    @@genres.each do |genre|
      hash[genre] = @@genres.count(genre) # counts how many times 'genre' occurs in the array
    end
    hash
  end

  def self.artist_count
    hash = {}

    @@artists.each do |artist|
      hash[artist] = @@artists.count(artist)
    end
    hash
  end

end
