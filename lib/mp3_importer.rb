require 'pry'

class MP3Importer

attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir[(@path += "/*.mp3")].map { |el| el.split("/").last }
  end

  def import
    binding.pry
    self.files.each {|i| Song.new_by_filename(i)}
  end

end
