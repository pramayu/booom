class TeamsController < ApplicationController

  before_action :set_only_admin
  before_action :set_team, only: [:edit, :update, :delete_team, :show]
  layout "account"

  def new
    @team = Team.new
    @teams = Team.all.order('created_at desc')
  end

  def edit
    @teams = Team.all.order('created_at desc')
  end

  def show

  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to team_account_url
    else
      redirect_to team_account_url
    end
  end

  def update
    if  @team.update(team_params)
      redirect_to team_account_url
    else
      redirect_to team_edit_url(@team)
    end
  end

  def delete_team
    @team.destroy
  end


  private

  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:name)
  end

  def set_only_admin
    redirect_to dashboard_path if !current_user.admin?
  end

end
