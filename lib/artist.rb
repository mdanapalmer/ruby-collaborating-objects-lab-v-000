class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize (name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.songs(song_one)
    song = Song.new(song_one)
  end

  def add_song(song)
    @songs << song
  end


end
