class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :boolean, exclusion: {in: [true, false]}
end
