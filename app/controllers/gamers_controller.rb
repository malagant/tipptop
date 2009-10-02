class GamersController < ApplicationController
  before_filter :require_user
  
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

  def update
    @gamer = current_user.gamer

    respond_to do |format|
      if @gamer.update_attributes(params[:gamer])
        flash[:notice] = 'Die Spielerdetails wurden erfolgreich aktualisiert.'
        format.html { redirect_to(@gamer) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @trailer.errors, :status => :unprocessable_entity }
      end
    end
  end
end
