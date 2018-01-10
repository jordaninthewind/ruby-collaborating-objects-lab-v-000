require 'pry'

class MP3Importer

attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    x = []
    Dir[(@path += "/*.mp3")].each do |el|
      x << el.split("/").last
    end
    x
  end

  def import
    self.files.each {|i| Song.new_by_filename(i)}
  end

end
