require 'pry'

class MP3Importer

attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    if @path.split("/").last != "/*.mp3"
       @path += "/*.mp3"
    end

    @files = Dir[@path].collect { |el| el.split("/").last }
    @files
  end

  def import
    self.files.each do |i|
      Song.new_by_filename(i)
      binding.pry
    end
  end
end
