class TippsController < ApplicationController
  before_filter :require_user

  def index
    @tipps = current_user.gamer.tipps
  end

  def show
    @tipp = current_user.gamer.tipps.find(params[:id])
  end

  def edit
    @tipp = current_user.gamer.tipps.find(params[:id])
  end

  def new
    @tipp = Tipp.new
    @tipp.game = Game.find(params[:game_id])
    @tipp.gamer = current_user.gamer
  end

  def create
    @tipp = current_user.gamer.tipps.new(params[:tipp])
    @tipp.game_id = params[:game_id]
    
    if @tipp.save
      flash[:notice] = "Ihr Tippspiel wurde erfolgreich gespeichert."
      redirect_to games_url
    else
      flash[:error] = "Beim Speichern ihres Tippspiels ist ein Fehler aufgetreten."
      redirect_to new_game_tipp_url(params[:game_id])
    end
  end

  def update
  end

  def destroy
    @tipp = Tipp.find(params[:id])
    @tipp.destroy

    redirect_to games_url
  end
end
