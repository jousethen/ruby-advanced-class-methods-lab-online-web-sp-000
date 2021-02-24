require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    new_song = Song.new()
    @@all << new_song
    return new_song
  end
  
  def self.new_by_name (name)
    new_song = Song.new
    @name = name
    new_song.name = name
    
    return new_song
  end
  
  def self.create_by_name(name)
    new_song = Song.new
    @name = name
    new_song.name = name
    @@all << new_song
    return new_song
  end
  
  def self.find_by_name(name)
    self.all.each do |song|
      if song.name == name
        return song
      end
    end
    return false
  end
  
  def self.find_or_create_by_name(name)
    song = self.find_by_name(name)
    
    if song 
      return song
    else
      song = self.create_by_name(name)
      binding.pry
      return song 
    end
    
   
      
  end
end
