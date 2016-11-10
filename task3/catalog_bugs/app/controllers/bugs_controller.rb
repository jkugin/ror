class BugsController < ApplicationController
	
	before_action :find, only: [:show, :edit, :update, :destroy]
	
	def index
		@bugs = Bug.all
	end
	
	def show
	end
	
	def new
		@bug = Bug.new
	end
	
	def create
		@bug = Bug.new(bug_params)
		if @bug.save
			redirect_to @bug
		else
			render 'new'
		end
	end
	
	def edit
	end
	
	def update
		if @bug.update(bug_params)
			redirect_to @bug
		else
			render 'edit'
		end
	end
	
	def destroy
		@bug.destroy
		redirect_to bugs_path
	end
	
	private
	
	def find
		@bug = Bug.find(params[:id])
	end
	
	def bug_params
		params.require(:bug).permit(:name, :size)
	end
end
