class MP3Importer

  def initialize(filepath)
    @filepath = filepath
  end

  def path
    @filepath ||= Dir.glob("#{filepath}/*.mp3").collect{ |f| f.gsub("#{filepath}/", "") }
  end

  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
end
end
