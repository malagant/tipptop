class GamersController < ApplicationController
  def new
    @gamer = Gamer.new
    @gamer.user = current_user
  end

  def show
    @gamer = Gamer.find(params[:id])
  end
  
  def edit
    @gamer = current_user.gamer
  end

  def create
    @gamer = current_user.build_gamer(params[:gamer])

    if @gamer.save
      flash[:notice] = "Ihre Spielerdaten wurden erfolgreich gespeichert."
      redirect_to @gamer
    else
      flash[:error] = "Beim Speichern ihrer Spielerdaten ist ein Fehler aufgetreten."
      render :action => :new
    end
  end
end
