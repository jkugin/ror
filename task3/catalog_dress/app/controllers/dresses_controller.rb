class DressesController < ApplicationController
	
	before_action :find, only: [:show, :edit, :update, :destroy]
	
	def index
		@dresses=Dress.all
	end
	
	def show
	end
	
	def new
		@dress = Dress.new
	end
	
	def create
		@dress = Dress.new(dress_params)
		if @dress.save
			redirect_to @dress
		else
			render 'new'
		end
	end
	
	def edit
	end
	
	def update
		if @dress.update(dress_params)
			redirect_to @dress
		else
			render 'edit'
		end
	end
	
	def destroy
		@dress.destroy
		redirect_to dresses_path
	end
	
	private
	
	def find
		@dress = Dress.find(params[:id])
	end
	
	def dress_params
		params.require(:dress).permit(:name, :size, :in_stock)
	end
end
