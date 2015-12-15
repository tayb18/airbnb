require "bcrypt"

class User < ActiveRecord::Base

  has_secure_password
  validates :password, length: { in: 6..20 }
  has_many :reviews
  has_many :listings
  has_many :listing_user_bookings

end