class GamesController < ApplicationController
  before_filter :require_admin, :only => [:edit, :new, :update, :destroy]

  def index
    @groups = Group.find(:all, :include => [:games, :teams])
    @rounds = Round.find(:all, :include => [:games, :teams])
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])

    @game.gametime = params[:game][:gametime] if params[:game][:gametime] 
    @game.team_one.id = params[:game][:team_one] if params[:game][:team_one]
    @game.team_two.id = params[:game][:team_two] if params[:game][:team_two]

    if @game.save
      flash[:notice] = "Spieldaten wurden erfolgreich aktualisiert"
      redirect_to games_url
    else
      flash[:notice] = "Spieldaten konnten nicht aktualisiert werden"
      redirect_to edit_game_url(@game)
    end
  end

  def start
    if request.method == :put
      @game = Game.find(params[:id])
      @game.start!
    end
    redirect_back_or_default '/'
  end

  def finish
    if request.method == :put
      @game = Game.find(params[:id])
      @game.finish!
    end
    redirect_back_or_default '/'
  end
end
