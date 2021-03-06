class Song

attr_reader :artist, :title

  def initialize(artist, title)
    @artist = artist
    @title = title
  end

end

class Room

  attr_reader :name, :guests, :songs

  def initialize(name)
    @name = name
    @guests = []
    @songs = []
  end

  def guest_inside
    return @guests.size
  end

  def guest_added(guest)
    @guests.push(guest)
  end

  def guest_removed(guest)
    @guests.delete(guest)
  end

  def room_cleared
    @guests.clear
  end

  def songs_in_room
    return @songs.size
  end

  def song_added(song)
    @songs.push(song)
  end

end

class Guest

  attr_reader :guest_name

  def initialize(guest_name)
    @guest_name = guest_name
  end

end
