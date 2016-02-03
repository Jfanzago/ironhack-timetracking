class EntriesController < ApplicationController
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

end
