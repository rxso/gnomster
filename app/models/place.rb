class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :photos

  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true, length: { minimum: 3 }
  validates :address, presence: true, length: { minimum: 10 }
  validates :description, presence: true, length: { minimum: 50 }
  validates :caption, presence: true, length: { minimum: 8 }
end
