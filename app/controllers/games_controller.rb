class GamesController < ApplicationController
  before_filter :require_admin

  def index
    @groups = Group.find(:all, :include => [:games, :teams])
    @rounds = Round.find(:all, :include => [:games, :teams])
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])

    if @game.update_attributes(params[:game])
      flash[:notice] = "Spieldaten wurden erfolgreich aktualisiert"
    else
      flash[:notice] = "Spieldaten konnten nicht aktualisiert werden"
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
