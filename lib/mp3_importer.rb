class MP3Importer

  def initialize(filepath)
    @filepath = filepath
  end

  def path
    @filepath ||= Dir.glob("#{filepath}/*.mp3").collect{ |f| f.gsub("#{filepath}/", "") }
  end

  def files
    files.each{ |filename| Song.new_by_filename(file) }
  end
end
