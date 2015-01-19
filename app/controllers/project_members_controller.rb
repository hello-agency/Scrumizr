class ProjectMembersController < ApplicationController
  before_action :set_member, only: [:member_projects]
  before_action :set_project, only: [:project_members]
  
  # GET /projects/:project_id/members
  def project_members
    if @project
      @project_members = @project.project_members.map { |pm| {role: pm.role, member: pm.member} }
      render json: @project_members
    else
      render json: []
    end
  end
  
  # GET /members/:member_id/projects
  def member_projects
    if @member
      @member_projects = @member.project_members.map { |pm| {role: pm.role, project: pm.project} }
      render json: @member_projects
    else
      render json: []
    end
  end

  private 
    
    def set_member
      @member = Member.find(params[:member_id])
    end
  
    def set_project
      @project = Project.find(params[:project_id])
    end
end
