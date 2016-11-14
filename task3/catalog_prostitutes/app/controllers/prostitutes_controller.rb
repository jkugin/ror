class ProstitutesController < ApplicationController
	before_action :find, only: [:show, :edit, :update, :destroy]
	
	
	def index
		@prostitutes = Prostitute.all
	end
	
	def show
	end
	
	def new
		@prostitute = Prostitute.new
	end
	
	def create
		@prostitute = Prostitute.new(prostitute_params)
		if @prostitute.save
			redirect_to @prostitute
		else
			render 'new'
		end
	end
	
	def edit
	end
	
	def update
		if @prostitute.update(prostitute_params)
			redirect_to @prostitute
		else
			render 'edit'
		end
	end
	
	def destroy
		@prostitute.destroy
		redirect_to prostitutes_path
	end
	
	
	private
	
	def find
		@prostitute = Prostitute.find(params[:id])
	end
	
	def prostitute_params
		params.require(:prostitute).permit(:name, :age, :price)
	end
end
