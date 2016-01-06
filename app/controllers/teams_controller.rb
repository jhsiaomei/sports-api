class TeamsController < ApplicationController
  def index
  end

  def create
    @team = Team.create(
      name: params[:name],
      school: params[:school],
      logo: params[:logo],
      color: params[:color],
      motto: params[:motto]
      )
  end
end
