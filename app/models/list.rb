class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  has_many :movies, through: :bookmarks
  has_many :reviews, dependent: :destroy
end
