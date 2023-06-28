class Bookmark < ApplicationRecord
  validates :movie, :list, presence: true
  validates_associated :movie, :list, uniqueness: true
  validates :comment, length: { minimum: 6 }

  belongs_to :movie
  belongs_to :list
end
