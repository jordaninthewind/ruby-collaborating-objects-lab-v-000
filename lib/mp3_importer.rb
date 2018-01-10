# require 'pry'
#
# class MP3Importer
#
# attr_accessor :path
#
#   def initialize(path)
#     @path = path
#     @files = []
#   end
#
#   def files
#     @path += "/*.mp3" unless @path.split("/").last == "*.mp3"
#     Dir[@path].each { |el| @files << el.split("/").last }
#     @files
#   end
#
#   def import
#     @files.each do |i|
#       Song.new_by_filename(i)
#     end
#   end
# end

class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    files.each{|f| Song.new_by_filename(f)}
  end
end
