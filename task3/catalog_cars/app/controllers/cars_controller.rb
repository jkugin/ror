class CarsController < ApplicationController
	before_action :find, only: [:show, :edit, :update, :destroy]
	
	
	def index
		@cars=Car.all
	end

	def show
	end
	
	def new
		@car=Car.new
	end
	
	def create
		@car=Car.new(cars_params)
			if @car.save
				redirect_to @car
			else
				render 'new'
			end
	end
	
	def edit
	end
	
	def update
		if @car.update(cars_params)
			redirect_to @car
		else
			render 'edit'
		end
	end
	
	def destroy
		@car.destroy
		redirect_to cars_path
	end
	
	private
	
	def find
		@car=Car.find(params[:id])
	end
	
	def cars_params
		params.require(:car).permit(:name, :price)
	end
end
