require 'pry'

class Song
attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  # def artist_name=(name)
  #   # turns artist's name as string into new artist
  #   Artist.find_or_create_by_name(name)
  #   self.add_song()
  # end

  def self.new_song(name)
    self.new(name)
  end

  def self.new_by_filename(file_name)
    file = file_name.split(" - ")
    new_song = self.new_song(file[1])
    new_song.artist = Artist.find_or_create_by_name(file[0])
    binding.pry
    new_song
  end
end



  #
