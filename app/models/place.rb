class Place < ApplicationRecord
  paginates_per 10

  belongs_to :user
  has_many :comments
  has_many :photos

  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  validates :name, presence: true, length: { minimum: 3 }
  validates :description, presence: true
  validates :address, presence: true
end
