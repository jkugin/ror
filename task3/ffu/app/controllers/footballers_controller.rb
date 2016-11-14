class FootballersController < ApplicationController
	
	def index
		@footballers=Footballer.all
	end
	
	def show
		@footballer=Footballer.find(params[:id])
	end
	
	def new
		@footballer = Footballer.new
	end
	
	def create
		@footballer = Footballer.new(footballer_params)
		if @footballer.save
			redirect_to @footballer
		else
			render :new
		end
	end
	
	def edit
		@footballer = Footballer.find(params[:id])
	end
	
	def update
		@footballer = Footballer.find(params[:id])
		if @footballer.update(footballer_params)
			redirect_to @footballer
		else
			render :edit
		end
	end
	
	def destroy
		@footballer=Footballer.find(params[:id])
		@footballer.destroy
		redirect_to footballers_path
	end
	
	private
	
	def footballer_params
		params.require(:footballer).permit(:name, :age, :club)
	end
	
end
