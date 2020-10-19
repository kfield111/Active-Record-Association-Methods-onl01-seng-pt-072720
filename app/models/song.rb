require 'pry'

class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    new_artist = Artist.new
    new_artist.name = "Drake"
    new_artist.save
    self.artist = new_artist
    binding.pry
  end
end
