class EntriesController < ApplicationController
	def create 
		@project = Project.find(params[:project_id])
		@entry = @project.entries.new params[:entry]
		if @entry.save
			redirect_to action: "index", controller: "entries", project_id: @project_id
		else 
			render "new"
		end	
	end
	def index
		#params has id of project
		@project = Project.find_by(id: params[:project_id])
		if @project.nil?
			render "no_project"
		@entry 	
		end
	end	
	def new
		@project = Project.find params[:project_id]
		@entry = @project.entries.new
	end	
		private

	def entry_params
		params.require(:entry).permit(:hours, :minutes, :date)
	end	
end
