class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: { scope: [:artist_name, :release_year}, message: "" ]

end
