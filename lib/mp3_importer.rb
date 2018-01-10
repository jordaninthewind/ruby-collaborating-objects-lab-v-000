require 'pry'

class MP3Importer

attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @path += "/*.mp3"
    x = Dir[@path]
    x.collect {|el| el.split("/")[-1]}
  end

  def import
    self.files.each {|i| Song.new_by_filename(i)}
  end

end
