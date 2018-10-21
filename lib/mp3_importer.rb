class MP3Importer

  def initialize("./spec/fixtures/mp3s")
    @filepath = filepath
  end

  def path
    @filepath ||= Dir.glob("#{filepath}/*.mp3").collect{ |f| f.gsub("#{filepath}/", "") }
  end
