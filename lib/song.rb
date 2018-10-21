class Song
  attr_accessor :artist, :title

  @@all = []

  def initialize(title)
    @title = title
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_name = Song.new(song)
    new_name.artist = artist
    new_name.save
  end

  def self.find_by_artist(artist)
    Song.all.select do |song|
      song.artist == artist
    end
  end

  def self.all
    @@all
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

  def save
      @@all << self
      self
    end

end
