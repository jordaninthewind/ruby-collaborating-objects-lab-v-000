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

    Dir[@path].collect do |el|
      el.split("/").last#{ if el.split(".").last == "mp3"}
      # binding.pry

    end
  end

  def import
    self.files.each { |i| Song.new_by_filename(i) }
  end
end
