require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@name = []
  @@artists = []
  @@genres = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@name << name
    @@artists << artist
    @@genres << genre
    @@count += 1
    # binding.pry
  end

  def self.count
    @@count
  end

  def self.name
    @@name
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    # genre_count['pop'] = 1

    @@genres.each do | genre |
      # ['rap', 'rap', 'soul', 'rnb', 'pop']
      # does genre exist as a key on the genre_count hash?
      # if so - then add 1 to its value
      # else set genre_count[genre] = 1
      if genre_count[genre] == nil
        genre_count[genre] = 1
      else
        genre_count[genre] += 1
      end
    end
    genre_count
    # {"pop" => 1, "rap" => 2}
  end

  def self.artist_count
    # binding.pry
    artist_count = {}

    @@artists.each do | art_name |
      # if so - then add 1 to its value
      # else set genre_count[genre] = 1
      # binding.pry
      if artist_count[art_name] == nil
        artist_count[art_name] = 1
      else
        artist_count[art_name] += 1
      end
    end
    artist_count

    # self.artists.count
  end

end
