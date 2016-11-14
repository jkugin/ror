class TextilesController < ApplicationController
	
	before_action :find, only: [:show, :edit, :update, :destroy]
	
	def index
		@textiles = Textile.all
	end
	
	def show
	end
	
	def new
		@textile = Textile.new
	end
	
	def create
		@textile = Textile.new(textile_params)
		if @textile.save
			redirect_to textile_path(@textile[:id])
		else
			render 'new'
		end
	end
	
	def edit
	end
	
	def update
		if @textile.update(textile_params)
			redirect_to textile_path(@textile[:id])
		else
			render 'edit'
		end
	end
	
	def destroy
		@textile.destroy
		redirect_to textiles_path
	end
	
	private
	
	def find
		@textile = Textile.find(params[:id])
	end
	
	def textile_params
		params.require(:textile).permit(:color, :material, :price)
	end
end
