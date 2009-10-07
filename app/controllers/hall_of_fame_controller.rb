class HallOfFameController < ApplicationController
  def index
    @gamers = Gamer.all(:order => 'points desc', :include => :tipps)
  end
end
