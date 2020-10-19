require 'pry'

class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    artist = Artist.new
    artist.name = "Drake"
    self.artist = artist
    binding.pry
  end
end
