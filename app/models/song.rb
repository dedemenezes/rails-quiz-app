class Song < ApplicationRecord
  validates :title, presence: true
  validates :year, presence: true

  has_many :reviews
end
