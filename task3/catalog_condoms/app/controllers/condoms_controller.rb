class CondomsController < ApplicationController
	
	before_action :find, only: [:show, :edit, :update, :destroy]
	
	
	def index
		@condoms=Condom.all
	end
	
	def show
		
	end
	
	def new
		@condom = Condom.new
	end
	
	def create
		@condom =Condom.new(condom_params)
		if @condom.save
			redirect_to condom_path(@condom[:id])
		else
			render 'new'
		end
	end
	
	def edit
	end
	
	def update
		if @condom.update(condom_params)
			redirect_to condom_path(@condom[:id])
		else
			render 'edit'
		end
	end
	
	def destroy
		@condom.destroy
		redirect_to condoms_path
	end
	
	
	private
	
	def find
		@condom = Condom.find(params[:id])
	end
	
	def condom_params
		params.require(:condom).permit(:name, :length, :price)
	end
	
	
	
end
	
	
