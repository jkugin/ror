class TanksController < ApplicationController
	before_action :find, only: [:show, :edit, :update, :destroy]
	
	def index
		@tanks = Tank.all
	end
	
	def show
	end
	
	def new
		@tank = Tank.new
	end
	
	def create
		@tank = Tank.new(tank_params)
			if @tank.save
				redirect_to @tank
			else
				render 'new'
			end
	end
	
	def edit
	end
	
	def update
		if @tank.update(tank_params)
			redirect_to @tank
		else
			render 'edit'
		end
	end
	
	def destroy
		@tank.destroy
		redirect_to tanks_path
	end
	
	
	private
	
	
	def find
		@tank = Tank.find(params[:id])
	end
	
	def tank_params
		params.require(:tank).permit(:tankname, :gun)
	end
	
end
