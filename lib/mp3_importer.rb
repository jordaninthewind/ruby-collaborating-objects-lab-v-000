require 'pry'

class MP3Importer

attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @path += "/*.mp3" unless @path.split("/").last == "*.mp3"
    Dir[@path].each { |el| @files << el.split("/").last }
    @files
  end

  def import
    self.files.each do |i|
      Song.new_by_filename(i)
      # binding.pry
    end
  end
end
