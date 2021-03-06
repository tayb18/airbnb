class UsersController < ApplicationController
	

	def new
		@user = User.new
	end

	def create
		
		@user = User.create({name: params[:name], 
			bio: params[:bio], 
			img_url: params[:img_url], 
			email: params[:email], 
			password: params[:password], 
			password_confirmation: params[:password_confirmation]})
		if @user.save
			redirect_to login_path 
		else 
			render :new
		end 

	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update(users_params)
		redirect_to user_path(@user)
	end

	private 
	def users_params
		params.require(:user).permit(:name, :bio, :img_url, :email, :password, :password_confirmation)
	end
end
