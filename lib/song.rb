require 'pry'
class Song

attr_reader :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []

def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1

    @@artists << @artist

    @@genres << @genre




end

def self.count
  @@count
end

def self.artists
  @@artists.uniq!
end

def self.genres
  # binding.pry
  @@genres.uniq!
end

def self.genre_count
  count_genre = Hash.new(0)
  @@genres.each do |genre|
    count_genre[genre] += 1
    # binding.pry
  end
return count_genre
end



def self.artist_count
  count_artists = Hash.new(0)
  @@artists.each do |artist|
    count_artists[artist] += 1
    # binding.pry
  end
  return count_artists

end


end
