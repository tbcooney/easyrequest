class TeamMembersController < ApplicationController
  before_action :find_team_member, only: [:show, :edit, :update, :destroy]

  def index
    @team_members = TeamMember.all.order("created_at DESC")
  end

  def new
    @team_member = TeamMember.new
  end

  def create
    @team_member = TeamMember.new(team_member_params)

    if @team_member.save
      redirect_to @team_member
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

private

  def find_team_member
    @team_member = TeamMember.find(params[:id])
  end

  def team_member_params
    params.require(:team_member).permit(:company_name, :first_name, :last_name, :email_address, :phone_number, :rate)
  end
end
