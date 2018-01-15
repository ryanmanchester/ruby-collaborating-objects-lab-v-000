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
  song.artist_name=(name)

end

def artist_name=(name)
  new_artist_object = Artist.find_or_create_by_name(name)
  self.artist = new_artist_object
# binding.pry
 end


end
