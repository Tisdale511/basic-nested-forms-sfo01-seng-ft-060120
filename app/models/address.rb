class Address < ActiveRecord::Base
  belongs_to :person

  def artist_attributes=(artist)
    self.artist = Artist.find_or_create_by(name: artist[:name])
    self.artist.update(artist)
  end
  
end
