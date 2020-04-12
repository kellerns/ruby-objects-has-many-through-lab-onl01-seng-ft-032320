class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def new_song(name, genre)
      Song.new(name, self, genre)
  end

  def genres
    songs.map {|song| song.genre}.uniq
  end


  def self.all
    @@all
  end



end
