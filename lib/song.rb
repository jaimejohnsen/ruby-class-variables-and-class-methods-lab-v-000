class Song
  @@genres = []
  @@artists = []
  @@count = 0

  attr_accessor :name, :artist, :genre
  def initialize(song_name, artist, genre)
    @@count += 1
    @name = song_name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
  end

    def self.count
    @@count
    end
#.artists returns an array without duplicates...so do a check if it has it,
# in not push into the array
    def self.artists
    @@artists.uniq
    end

    def self.genres
    @@genres.uniq
    end

  #.genre_count, that returns a hash in which the keys are the names of each genre.
   #Each genre name key should point to a value that is the number of songs that have that genre.
   def self.genre_count
     genre_count = {}
     @@genres.each do |genre|
       if genre_count[genre] #accessing the value of the key provided in hash. Access the hash name, then the key, to get value
         genre_count[genre] += 1

   end
end
