class Song

  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@songs = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist
    @@genres << self.genre
    @@songs << self.name
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

  def self.genre_count
    arr = []
    @@genres.each_with_object({}) {|a,b| b[a] = @@genres.count(a)}
  end

  def self.artist_count
    arr = []
    @@artists.each_with_object({}) {|a,b| b[a] = @@artists.count(a)}
  end

end
