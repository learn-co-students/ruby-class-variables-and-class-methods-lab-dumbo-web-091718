require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = Array.new
  @@genres = Array.new

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << self.artist
    @@genres << self.genre

  end

  def self.artists
    return @@artists.uniq!
  end


  def self.genres
    return @@genres.uniq!
  end

 def self.count
   return @@count
 end

  def self.genre_count
    count_genres = Hash.new
    @@genres.each do |g|
      count_genres[g]=@@genres.count(g)
    end
    return count_genres
  end

  def self.artist_count
    count_artists = Hash.new
    @@artists.each do |a|
      count_artists[a]=@@artists.count(a)
    end
    return count_artists
  end

end
