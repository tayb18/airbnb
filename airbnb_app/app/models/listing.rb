class Listing < ActiveRecord::Base

  has_many :listing_user_bookings
  has_many :reviews
  belongs_to :user

   $markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)

end