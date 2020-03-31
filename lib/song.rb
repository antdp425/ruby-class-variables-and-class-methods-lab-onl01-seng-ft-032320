class Song
@@count = 0
@@artists = []
@@genres = []
attr_accessor :name, :artist, :genre

  def initialize(name,artist,genre)
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

  def self.artists
    unique_a = @@artists.uniq
  end

  def self.genres
    unique_g = @@genres.uniq
  end

  def self.genre_count
    genre_counter = {}
    @@genres.collect do |genre|
    genre_counter[genre] = @@genres.count(genre)
    end
    genre_counter
  end

  def self.artist_count
    artist_counter = {}
    @@artists.collect do |artist|
    artist_counter[artist] = @@artists.count(artist)
    end
    artist_counter
  end

end
