class Song
  attr_accessor :artist, :title

  def initialize(title)
    @title = title
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_name = Song.new(song)
    new_name.artist = artist
    new_song.save
  end

end
