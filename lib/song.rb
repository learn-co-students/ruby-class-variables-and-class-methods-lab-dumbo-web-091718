require "pry"

class Song

  @@count = 0
  @@genres = []
  @@artists = []

attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @@count += 1
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
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
counts = Hash.new 0
    @@genres.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }

    end
def self.artist_count
  counts = Hash.new 0
      @@artists.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
end


end
