require 'pry'

class Artist
attr_accessor :name, :songs

@@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    self.songs.each do |el|
      puts el.name
    end
  end

  def self.find_or_create_by_name(artist)
    if self.all.any? {|i| i.name == artist }
      artist
    else
      x = Artist.new(artist)
      x.save
      # binding.pry
      x
    end
    # self.save
  end
end
