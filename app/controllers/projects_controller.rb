class ProjectsController < ApplicationController
  def index
  	@projects = Project.limit(10)
  	if @projects.empty?
  		render "no_projects" 
  	else
  	  	render "index"
  	end 	
  end
  
  def show
  	id = params[:id]
  	@project= Project.find(params[:id])
  end	




end

