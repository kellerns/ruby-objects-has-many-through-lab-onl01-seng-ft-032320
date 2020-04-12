class Genre
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def artists
    songs.map {|song| song.artist}
  end


  def self.all
    @@all
  end



end
