class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies
  validates :name, presence: true, uniqueness: true
  has_many :movies, through: :bookmarks
end
