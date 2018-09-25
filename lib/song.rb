require 'pry'

class Song

  attr_reader :name, :artist, :genre
      @@count = 0
      @@all = []
      @@genres = []
      @@artists = []

  def initialize(name, artist, genre)
      @name = name #instance  var
      @@count += 1 #class var
      @genre = genre #instance var
      @artist = artist
      @@artists << artist
      @@genres << genre
      @@all << self

    end

    def self.count
       @@count
    end

    def self.artists
       @@artists.uniq
    end
    #
    def self.genres
       @@genres.uniq
    end
    #
    def genres.count
      @@genre.count
    end


   def self.artist_count
    artists_count =  Hash.new
     count_by_genre =  @@artists.each do |art|
       if artists_count[art] # if art key exist in artists_count => returns truthy or falsy
          artists_count[art] += 1  # if truthy is return set it to 1
       else
          artists_count[art] = 1
       end
     end
     artists_count
   end
     # binding.pry


  def self.genre_count
    genr_count =  Hash.new
      @@genres.each do |genr|
         if genr_count[genr]
            genr_count[genr] += 1
         else
           genr_count[genr] = 1
         end
       end
    genr_count
    end

end
