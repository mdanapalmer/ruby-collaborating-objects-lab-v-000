class MP3Importer

  def initialize(path)
    @path = path
  end

  def path
    @path ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def files
    files.each{ |filename| Song.new_by_filename(filename) }
  end
end
