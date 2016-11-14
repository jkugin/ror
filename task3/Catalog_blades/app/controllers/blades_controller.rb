class BladesController < ApplicationController
	
	def index
		@blades=Blade.all
	end
	
	def show
		@blade=Blade.find(params[:id])
	end
	
	def new
		@blade = Blade.new
	end
	
	def create
		@blade = Blade.new(blade_params)
		if @blade.save
			redirect_to @blade
		else
			render :new
		end
	end
	
	def edit
		@blade = Blade.find(params[:id])
	end
	
	def update
		@blade = Blade.find(params[:id])
		if @blade.update(blade_params)
			redirect_to @blade
		else
			render :edit
		end
	end
	
	def destroy
		@blade=Blade.find(params[:id])
		@blade.destroy
		redirect_to blades_path
	end
	
	private
	
	def blade_params
		params.require(:blade).permit(:name, :speed, :number_of_layers)
	end
	
end
