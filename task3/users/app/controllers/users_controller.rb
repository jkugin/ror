class UsersController < ApplicationController
	before_action :current_user, only: [:show, :edit, :update, :destroy]
	
	def index
		@users = User.all
	end

	def show
	end

	def new
		@user=User.new
	end

	def update
		if @user.update(user_params)
			redirect_to @user
		else
			render :new
		end
	end

	def destroy
		@user.delete
		redirect_to users_path
	end

	def edit
	end

	def create
		user=User.new(user_params)
		if user.save
			redirect_to user
		else
			render :new
		end
	end
	
	private
	
	def user_params
		params.require(:user).permit(:email)
	end
	
	def current_user
		@user=User.find(params[:id])
	end
end
