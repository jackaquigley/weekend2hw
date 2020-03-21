require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require ('../CCC.rb')

#create a song

Class TestSong < Minitest::Test

  def setup
    @song = Song.new("New York, New York", "Frank Sinatra")
  end

end
