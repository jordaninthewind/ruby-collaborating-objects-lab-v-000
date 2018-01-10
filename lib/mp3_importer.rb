require 'pry'

class MP3Importer

attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @path += "/*.mp3"
    file = Dir[@path].collect {|el| el.split("/")[-1]}
    binding.pry
    return file
  end

  def import
    @path += "/*.mp3"
    Dir[@path].each {|i| Song.new_by_filename(i)}
  end

end
