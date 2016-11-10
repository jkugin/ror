class ProcessorsController < ApplicationController
	
	before_action :find, only: [:show, :edit, :update, :destroy]
	
	def index
		@processors = Processor.all
	end
	
	def show
	end
	
	def new
		@processor = Processor.new
	end
	
	
	def create
		@processor = Processor.new(proc_params)
		if @processor.save
			redirect_to @processor
		else
			render 'new'
		end
	end
	
	def edit
	end
	
	def update
		if @processor.update(proc_params)
			redirect_to @processor
		else
			render 'edit'
		end
	end
	
	def destroy
		@processor.destroy
		redirect_to processors_path
	end
	
	private
	
	def find
		@processor = Processor.find(params[:id])
	end
	
	def proc_params
		params.require(:processor).permit(:name, :friquency, :gpu)
	end
end
