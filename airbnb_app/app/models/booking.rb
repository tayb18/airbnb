class Booking < ActiveRecord::Base

  has_many :listing_user_bookings

end