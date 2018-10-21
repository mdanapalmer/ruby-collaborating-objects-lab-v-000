class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize (name)
    @name = name
    @songs = []
  end

  def self.songs(song_one)
    song = Song.new(song_one)
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    @@all.detect do |artist| artist == artist.name  ||=
      artist = Artist.new(name)
      artist.name = name
    end
end


end
