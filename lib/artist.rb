require 'pry'

class Artist
attr_accessor :name, :songs

@@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each { |el| puts el.name }
  end

  def find

  end

  def create

  def self.find_or_create_by_name(artist)
    if self.all.any? {|i| i.name == artist }
      artist
    else
      Artist.new(artist)
      # x.save
      # # binding.pry
      # x
    end
  end
end
