class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def path
    @path ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def files
    @files.each{ |filename| Song.new_by_filename(filename) }
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
