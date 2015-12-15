class ListingsController < ApplicationController

	def index
		@listings = Listing.all 
	end

	def new
		@listing = Listing.new
	end

	def create
		@listing = Listing.create({
			address: params["listing"]["address"],
			neighborhood: params["listing"]["neighborhood"],
			price_per_night: params["listing"]["price_per_night"],
			description: params["listing"]["description"],
			user_id: session["user_id"],
			is_available: params["listing"]["is_available"],
			name: params["listing"]["name"],
			photo_url: params["listing"]["photo_url"]
			})
		redirect_to listings_path
	end

	def show
		@listing = Listing.find(params[:id])
	end

	def edit
		@listing = Listing.find(params[:id])
	end

	def update
		@listing = Listing.find(params[:id])
		@listing.update(listings_params)
		redirect_to listing_url
	end

	def destroy
		listing = Listing.find(params[:id]).destroy
			redirect_to listings_path
	end

	private
	def listings_params
		params.require(:listing).permit(:address, :neighborhood, :price_per_night, :description, :is_available, :name, :photo_url)
	end
end

