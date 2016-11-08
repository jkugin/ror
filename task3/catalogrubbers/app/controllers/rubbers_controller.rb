class RubbersController < ApplicationController 
	before_action :find, only: [:show, :edit, :update, :destroy]
	
	def index
		@rubbers = Rubber.all
	end
	
	def show
		
	end
	
	def new
		@rubber = Rubber.new
		
	end
	
	def create
		@rubber = Rubber.new(rubber_params)
		if @rubber.save
			redirect_to rubber_path(@rubber[:id])
		else
			render :new
		end
		
	end
	
	def edit
		
	end
	
	def update
		if @rubber.update(rubber_params)
			redirect_to rubber_path(@rubber[:id])
		else
			render :edit
		end
	end
	
	def destroy
		@rubber.destroy
		redirect_to rubbers_path
		
	end
	
	
	private
	
	def find
		@rubber = Rubber.find(params[:id])
	end
	
	def rubber_params
		params.require(:rubber).permit(:name, :color, :piples_in)
	end
	
	
	
	
	
	
	
	
	
	
	
end
