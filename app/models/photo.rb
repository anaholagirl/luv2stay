class Photo < ActiveRecord::Base

  validates :name, presence: true
  validates :user_id, presence: true
  validates :rental_id, presence: true
  belongs_to :rental
  belongs_to :user

end
