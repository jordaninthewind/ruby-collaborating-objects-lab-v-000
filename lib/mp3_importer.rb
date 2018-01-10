require 'pry'

class MP3Importer

attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @path += "/*.mp3"
    files = Dir[@path].collect {|el| el.split("/")[-1]}
    files
    # binding.pry
  end

  def import
    @path += "/*.mp3"
    Dir[@path].each {|i| Song.new_by_filename(i)}
  end

end
