class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: { scope: [:artist_name, :release_year], message: "cannot be repeated by same author in same year" }
  validates :released, inclusion: { in: [true, false]}
  #integer
  #optional if released is false
  #must be <= current year 
  validates :release_year
end
