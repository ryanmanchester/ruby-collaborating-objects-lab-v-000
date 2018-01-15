require 'pry'
class Song
attr_accessor :artist, :name

def initialize(name)
  @name = name
end

def name
  @name
end

def self.new_by_filename(filename)
  new_file = filename.split(" - ")
  song = Song.new(new_file[1])
  #song.artist_name=(name)
  song
binding.pry
end

def artist_name=(name)
  artist = Artist.find_or_create_by_name(name)
  artist.add_song(self)
 binding.pry
 end


end
