class BallsController < ApplicationController
	
	before_action :find, only: [:show, :edit, :update, :destroy]
	
	def index
		@balls = Ball.all
	end
	
	def show
	end
	
	def new
		@ball = Ball.new
	end
	
	def create
		@ball = Ball.new(ball_params)
		if @ball.save
			redirect_to ball_path(@ball[:id])
		else
			render :new
		end
		
	end
	
	def edit
	end
	
	def update
		if @ball.update(ball_params)
			redirect_to ball_path(@ball[:id])
		else
			render :edit
		end
	end
	
	def destroy
		@ball.destroy
		redirect_to balls_path
	end
	
	private
	
	def ball_params
		params.require(:ball).permit(:name, :material, :stars)
	end
	
	def find
		@ball = Ball.find(params[:id])
	end
	
end
