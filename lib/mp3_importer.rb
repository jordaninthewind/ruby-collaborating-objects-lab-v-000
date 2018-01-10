require 'pry'

class MP3Importer

attr_accessor :path, :file_names

  def initialize(path)
    @path = path
  end

  def files
    @path += "/*.mp3"
    names = Dir[@path].collect {|el| el.split("/")[-1]}
    return names
  end

  def import
    @path += "/*.mp3"
    Dir[@path].each {|i| Song.new_by_filename(i)}
  end

end
