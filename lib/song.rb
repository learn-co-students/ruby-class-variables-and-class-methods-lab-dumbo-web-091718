class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@artist_count = {}
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
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

  def self.artist_count
    @@artists.count
  end

  def self.genre_count
    genres_count = {}

    @@genres.each do |genre|
      if genres_count.include?(genre)
        genres_count[genre] += 1
      else
        genres_count[genre] = 1
      end
    end
    genres_count
  end

  def self.artist_count
    artists_count = {}

    @@artists.each do |artist|
      if artists_count.include?(artist)
        artists_count[artist] += 1
      else
        artists_count[artist] = 1
      end
    end
    artists_count
  end

end
