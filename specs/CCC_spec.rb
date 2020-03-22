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
