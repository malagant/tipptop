class TeamsController < ApplicationController
  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])

    if @team.update_attributes(params[:team])
      flash[:notice] = "Änderungen gespeichert"
      redirect_to groups_url
    else
      flash[:notice] = "Fehler beim Speichern"
      redirect_to edit_team_url(@team)
    end
  end
end
