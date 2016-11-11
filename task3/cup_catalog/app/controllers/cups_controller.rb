class CupsController < ApplicationController
	
	before_action :find, only: [:show, :edit, :update, :destroy]
	
	def index
		@cups = Cup.all
	end
	
	def show
	end
	
	def new
		@cup=Cup.new
	end
	
	def create
		@cup=Cup.new(cup_params)
		if @cup.save
			redirect_to @cup
		else
			render 'new'
		end
	end
	
	def edit
	end
	
	def update
		if @cup.update(cup_params)
			redirect_to @cup 
		else
			render 'edit'
		end
	end
	
	def destroy
		@cup.destroy
		redirect_to cups_path
	end
	
	private
	
	def find
		@cup=Cup.find(params[:id])
	end
	
	def cup_params
		params.require(:cup).permit(:material, :price)
	end
	
end
