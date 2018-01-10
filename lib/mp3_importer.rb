require 'pry'

class MP3Importer

attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir[(@path += "/*.mp3")].collect { |el| el.split("/")[-1] }
  end

  def import
    self.files.each {|i| Song.new_by_filename(i)}
  end

end
