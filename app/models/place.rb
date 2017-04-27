class Place < ApplicationRecord
  paginates_per 10
  belongs_to :user
  validates :name, presence: true
end
