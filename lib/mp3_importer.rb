require 'pry'

class MP3Importer

attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @files << Dir[(@path += "/*.mp3")].collect { |el| el.split("/").last }
  end

  def import
    self.files.each { |i| Song.new_by_filename(i) }
  end
end
