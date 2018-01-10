require 'pry'

class Song
attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end



  # def self.new_song(name)
  #   self.new(name)
  # end

  def self.new_by_filename(file_name)
    file = file_name.split(" - ")
    new_song = self.new(file[1])
    new_song.artist_name = file[0]
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

end



  #
