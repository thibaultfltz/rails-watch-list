class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie, uniqueness: { scope: :list }
  validates_length_of :comment, minimum: 6, too_short: "Enter more words"
  
end
