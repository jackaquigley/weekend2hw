require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative ('../CCC.rb')

#create a song

class TestSong < Minitest::Test

  def setup
    @song = Song.new("Frank Sinatra", "New York, New York")
  end

  def test_song_has_title
    assert_equal("New York, New York", @song.title)
  end

  def test_song_has_artist
    assert_equal("Frank Sinatra", @song.artist)
  end

end

class TestRoom < Minitest::Test

  def setup
    @room = Room.new("Room One")
    @guest1 = Guest.new ("Jack")
    @guest2 = Guest.new ("Susan")
  end

  def test_room_has_name
    assert_equal("Room One", @room.name)
  end

  def test_guests_in_room
    assert_equal(0, @room.guest_inside)
  end

  def test_guest_added_to_room
    @room.guest_added("Susan")
    @room.guest_added("Jack")
    assert_equal(2, @room.guest_inside)
  end

end

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Bob")
  end

  def test_guest_has_name
    assert_equal("Bob", @guest.guest_name)
  end

end
