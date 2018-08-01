class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: { scope: :}

end
