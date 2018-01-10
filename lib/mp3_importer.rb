require 'pry'

class MP3Importer

attr_accessor :path

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end
  
  def import
    @files.each do |i|
      Song.new_by_filename(i)
    end
  end
end
