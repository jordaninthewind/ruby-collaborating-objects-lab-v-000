require 'pry'

class MP3Importer

attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    Dir[(@path)].collect do |el|
      el.split("/").last if el.split(".").last == "mp3"
    end
  end

  def import
    # binding.pry
    self.files.each { |i| Song.new_by_filename(i) }
  end
end
