require 'pry'

class MP3Importer

attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    x = Dir[(@path += "/*.mp3")].collect { |el| el.split("/").last }
    binding.pry
  end

  def import
    self.files.each { |i| Song.new_by_filename(i) }
  end
end
