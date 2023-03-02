class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy #list = parent since a list has many bookmarks.
  has_many :movies, through: :bookmarks

  validates :name, presence: true
  validates :name, uniqueness: true
end
