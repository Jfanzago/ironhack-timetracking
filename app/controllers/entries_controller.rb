class EntriesController < ApplicationController
	def index
		#params has id of project
		@project = Project.find_by(id: params[:project_id])
		unless @project
			render "no_project"
		end
	end	
end
