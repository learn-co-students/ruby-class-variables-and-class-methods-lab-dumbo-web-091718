require 'pry'
class Song
  attr_reader :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@all = []
  @@genre_count = Hash.new(0)
  @@artist_count = Hash.new(0)

  def initialize(name, artist, genre)
    @@all << self
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.all
    @@all
  end

  def self.genre_count
    @@genres.each do |genre|
      if @@genre_count[genre] == nil
        @@genre_count[genre] = 1
      else
        @@genre_count[genre] += 1
      end
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |artist|
      if @@artist_count[artist] == nil
        @@artist_count[artist] = 1
      else
        @@artist_count[artist] += 1
      end
    end
    @@artist_count
  end

end
