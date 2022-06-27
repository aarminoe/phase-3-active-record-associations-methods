class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    name_array = []
    self.artists.each do |t|
      name_array.push(t.name)
    end
    name_array
  end
end
