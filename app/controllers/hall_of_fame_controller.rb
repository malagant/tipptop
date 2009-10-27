class HallOfFameController < ApplicationController
  def index
    if request.post?
      user = User.find_by_nickname(params[:nickname])
      @gamer = user.gamer if user
      if @gamer
        redirect_to gamer_tipps_url(@gamer) if @gamer
      else
        flash[:notice] = "Der Nutzer #{params[:nickname]} konnte nicht gefunden werden." unless user
        flash[:notice] = "Der Nutzer #{user.nickname} ist noch kein Spieler." if user
        redirect_to hall_of_fame_index_url
      end
    else
      self.current_menu_item = 'hall_of_fame'
      if params[:q]
        @users = User.all(:conditions => ["nickname LIKE ?", params[:q] + '%'])
        respond_to do |format|
          format.js
        end
      else
        @gamers = Gamer.all(:order => 'points desc', :include => :tipps)
      end
    end
  end
end
