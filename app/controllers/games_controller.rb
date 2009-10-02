class GamesController < ApplicationController
  def index
    @groups = Group.all
  end
end
