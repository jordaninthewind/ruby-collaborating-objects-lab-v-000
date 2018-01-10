require 'pry'

class MP3Importer

attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @path += "/*.mp3"
    x = Dir[@path]
    binding.pry
  end

  def import
    @path += "/*.mp3"
    Dir[@path].each {|i| Song.new_by_filename(i)}
  end

end
