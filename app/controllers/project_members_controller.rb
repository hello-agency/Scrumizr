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

  # POST /projects/:project_id/members/add
  def create
    @project_member = ProjectMember.create(project_member_params)
    if @project_member.valid?
      render json: @project_member
    else
      #Return the first validation error message
      render json: @project_member.errors.to_hash.first[1]
    end
  end

  private

    def project_member_params
      params.require(:project_member).permit(:role, :project_id, :member_id)
    end

    def set_member
      @member = Member.find(params[:member_id])
    end
  
    def set_project
      @project = Project.find(params[:project_id])
    end
end
