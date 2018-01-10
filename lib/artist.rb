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

  def find(name)
    self.all.find {|i| i.name == name}
  end

  def create

  end

  def self.find_or_create_by_name(artist)
    if self.find(artist)
      artist
    else
      self.new(artist).save
      # x.save
      # # binding.pry
      # x
    end
  end
end
