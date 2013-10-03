class ProjectsController < ApplicationController
	before_filter :require_login, :except => :index
	
	def index
		@projects = Project.all
	end

	def show
  		@project = Project.find(params[:id])
  	end

end
