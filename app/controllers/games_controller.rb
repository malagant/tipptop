class GamesController < ApplicationController
  def index
    @groups = Group.all
    @rounds = Round.all
  end
end
