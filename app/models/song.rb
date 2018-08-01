class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: { scope: [:artist_name, :release_year}, message: "cannot be repeated by same author in same year" ]

end
