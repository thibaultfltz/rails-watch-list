class Movie < ApplicationRecord
  has_many :bookmarks
  has_one_attached :image
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  validates_length_of :overview, minimum: 6
end
