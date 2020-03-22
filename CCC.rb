class Song

attr_reader :artist, :title

  def initialize(artist, title)
    @artist = artist
    @title = title
  end

end

class Room

  attr_reader :name

  def initialize(name)
    @name = name
  end

end
