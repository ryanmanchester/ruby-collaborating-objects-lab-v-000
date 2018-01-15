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
  new_instance = Song.new(new_file[1])
  new_instance.artist_name=(name)
  #song
  #binding.pry
end

def artist_name=(name)
  Artist.find_or_create_by_name(name)
  self.artist.add_song(song)
  #binding.pry
end


end
