class Song 
   attr_accessor :name,:artist 
   @@all=[] 
    
   def initialize(name)
     @name=name 
     @@all << self 
   end 
   
 def self.all 
   @@all
 end 

 
 def self.new_by_filename(file)
    song_name = file.chomp(".mp3").split(" - ")[1]
    song = self.new(song_name)
    song_artist= file.chomp(".mp3").split(" - ")[0]
    song.name=song_name
    song.artist_name=song_artist
    song
 end
 
   def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
end 