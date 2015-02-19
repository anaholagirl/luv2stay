class Rental < ActiveRecord::Base

  validates :location, presence: true
  validates :bedrooms, presence: true
  validates :baths, presence: true
  validates :sleeps, presence: true
  validates :price, presence: true
  validates :user_id, presence: true

  has_many :photos
  belongs_to :user

end
