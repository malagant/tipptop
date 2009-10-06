class GamesController < ApplicationController
  def index
    @groups = Group.find(:all, :include => [:games, :teams])
    @rounds = Round.find(:all, :include => [:games, :teams])
  end
end
