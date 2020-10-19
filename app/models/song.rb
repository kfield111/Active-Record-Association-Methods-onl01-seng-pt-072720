require 'pry'

class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    new_artist = Artist.find_or_create_by(name) do |t|
      t.name = "Drake"
      t.save
    end
    self.artist = new_artist
  end
end
