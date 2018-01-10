require 'pry'

class MP3Importer

attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    Dir[@path += "/*.mp3"].collect do |el|
      el.split("/").last if el.split(".").last == "mp3"
      # binding.pry
    end
  end

  def import
    self.files.each { |i| Song.new_by_filename(i) }
  end
end
