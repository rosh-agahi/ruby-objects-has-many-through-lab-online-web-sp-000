class Artist 
  attr_accessor :name 
  @@all 
  
  def initialize (name)
    @name = name
    @@all << self
  end
  
  def all 
    @@all
  end
  
  def songs 
    Song.all.select{|song| song.artist == self}
  end
  
  def new_song(name,genre)
    song = Song.new(name,genre)
    song.artist = self
  end
  
  def genres 
    
  
    
end

Class Song 
  attr_accessor :name, :artist, :genre 
  @@all = []
  
  def initialize(name,genre)
    @name = name
    @genre = genre 
  end
end