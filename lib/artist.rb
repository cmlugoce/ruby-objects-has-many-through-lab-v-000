<<<<<<< HEAD
class Artist 

attr_accessor :name, :genre, :songs 
@@all = []

def self.all
  @@all 
end

def initialize(name) 
  @name = name
  @@all << self 
end

def new_song (name, genre)
  Song.new(name, self, genre)
end 

 def songs 
    Song.all.select {|s| s.artist == self} 
  end 

def genres
    songs.map do |song|
      song.genre
    end
  end 

end 
=======
class Artist
  attr_accessor :name

  def initialize(name)
    @songs = []
    @name = name
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def genres                        #=> This is how the other two
    self.songs.collect do |song|    #=> classes talk to each other
      song.genre
    end
  end
end
>>>>>>> 6c12b9a5d20a5dcbab5f6ade0bc974002805d217
