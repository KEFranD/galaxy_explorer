class Planet < ApplicationRecord
  # belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 6 }
  validates :location, presence: true
  validates :price, presence: true
  validates :rating, presence: true
end
