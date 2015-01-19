class ProjectsController < ApplicationController
  
  before_action :set_project, only: [:show, :update, :destroy]
  
  # GET /projects
  def index
    @projects = Project.all
    render json: @projects
  end
  
  # GET /projects/:id
  def show
    render json: @project
  end
  
  # POST /projects
  def create
    @project = Project.new(project_params)
    if @project.save
      render json: @project
    else
      render json: @project.errors
    end
  end
  
  # PUT/PATCH /projects/:id
  def update
    if @project.update_attributes(project_params)
      render json: @project
    else
      render json: @project.errors
    end
  end
  
  # DELETE /projects/:id
  def destroy
    @project.archived!
    if @project.save 
      render json: {status: true, message: 'Project has been successfully destroyed'}
    else
      render json: {status: true, message: 'Project couldn\'t be deleted, try again later'}
    end
  end
  
  private
    
    def project_params 
      params.require(:project).permit(:name, :description, :client, :beginning_date, :ending_date, :deadline, :planned_duration, :budget, :state)
    end
  
    def set_project
      @project = Project.find(params[:id])
    end
end
