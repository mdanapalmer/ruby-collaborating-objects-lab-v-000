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
    new_song.save
  end

  def self.find_by_artist(artist)
    Song.all.select do

  def self.all
    @@all
  end
  
end
