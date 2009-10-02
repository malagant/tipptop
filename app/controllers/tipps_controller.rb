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
  end

  def create
  end

  def update
  end

  def destroy
  end

end
