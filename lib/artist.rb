class Artist
  attr_reader :name
  @@all = []

  def initialize(name)
    @name   = name
    @@all  << self
  end

  def self.all
    return @@all
  end

  def new_song(name_song, genre)
    Song.new(name_song, self, genre)
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def genres
    songs.map { |song| song.genre }
  end
end