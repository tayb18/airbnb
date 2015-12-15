class ListingsController < ApplicationController

	def index
		@listings = Listing.all 
	end

	def create
		@listing = Listing.create({
			address: params["address"],
			neighborhood: params["neighborhood"],
			price_per_night: params["price_per_night"],
			description: params["description"],
			user_id: params["user_id"],
			is_available: params["is_available"]
			})
		redirect_to listings_path
	end

	def show
		@listing = Listing.find(params[:id])
	end

	def destroy
		listing = Listing.find(params[:id].destroy)
			redirect_to listings_path
	end
end

