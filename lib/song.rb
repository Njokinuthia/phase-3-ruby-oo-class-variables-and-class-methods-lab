class Song

  @@count = 0
  @@genres = []
  @@artists = []
 
  attr_accessor :name , :artist, :genre
  def initialize name , artist, genre
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
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
    # genre_count = {}
    # @@genres.each do |genre|
    #   if genre_count[genre]
    #     genre_count[genre] += 1 
    #   else
    #     genre_count[genre] = 1
    #   end
    # end
    # genre_count

    @@genres.tally
  end

  def self.artist_count
    @@artists.tally
  end

end

ninety_nine_problems = Song.new("99 problems" , "Jay-z", "rap")
ninety_nine_problems = Song.new("99 problems" , "Jay-z", "soul")
ninety_nine_problems = Song.new("99 problems" , "Jay-z", "rap")

ninety_nine_problems = Song.new("99" , "beyonce", "funk")
ninety_nine_problems = Song.new("gloria" , "ben", "classical")
ninety_nine_problems = Song.new("9" , "ben", "classical")



# puts ninety_nine_problems.genre
puts Song.artist_count