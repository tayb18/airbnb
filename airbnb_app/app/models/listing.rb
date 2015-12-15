class Listing < ActiveRecord::Base

  has_many :listing_user_bookings
  has_many :reviews
  belongs_to :user

end