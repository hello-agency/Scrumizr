class MembersController < ApplicationController
  before_action :set_member, only: [:show]
  
  # GET /members
  def index
    @members = Member.all
    render json: @members
  end
  
  # GET /members/:id
  def show
    render json: @member
  end
  
  # DELETE /members/:id
  def delete
    @member.closed!
    if @member.save 
      render json: {status: true, message: 'Member has been successfully destroyed'}
    else
      render json: {status: false, message: 'Member couldn\'t be destroyed, try again later'}
    end
  end
  
  private 
  
    def member_parameters
      params.require(:member).permit(:fullname, :mail, :avatar)
    end
  
    def set_member
      @member = Member.find(params[:id])  
    end
end