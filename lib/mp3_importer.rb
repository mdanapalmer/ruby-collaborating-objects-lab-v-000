class MP3Importer

  def initialize(filepath)
    @filepath = filepath
  end

  def path
    @filepath ||= Dir.glob("#{filepath}/*.mp3").collect{ |f| f.gsub("#{filepath}/", "") }
  end



end
