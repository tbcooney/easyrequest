class TeamMembersController < ApplicationController
  before_action :find_team_member, only: [:show, :edit, :update, :destroy]

  def index
    @team_members = TeamMember.where(user_id: current_user).order("created_at DESC")
  end

  def new
    @team_member = current_user.team_members.build
  end

  def create
    @team_member = current_user.team_members.build(team_member_params)

    if @team_member.save
      redirect_to @team_member
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @team_member.update(team_member_params)
      redirect_to @team_member
    else
      render 'edit'
    end
  end

  def destroy
    @team_member.destroy
    redirect_to team_members_path
  end

private

  def find_team_member
    @team_member = TeamMember.find(params[:id])
  end

  def team_member_params
    params.require(:team_member).permit(:avatar, :company_name, :first_name, :last_name, :email_address, :phone_number, :rate)
  end
end
