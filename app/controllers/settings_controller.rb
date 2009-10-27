class SettingsController < ApplicationController
  before_filter :require_admin
  
  def index
    @settings = Setting.all
  end

  def new
    @setting = Setting.new
  end

  def show
    @setting = Setting.find(params[:id])
  end

  def edit
    @setting = Setting.find(params[:id])
  end

  def create
    @setting = Setting.new(params[:setting])

    if @setting.save
      flash[:notice] = "Einstellungen wurden gespeichert"
      redirect_to settings_url
    else
      flash[:notice] = "Fehler beim Speichern der Einstellungen"
      redirect_to edit_setting_url(@setting)
    end
  end

  def update
    @setting = Setting.find(params[:id])
    if @setting.update_attributes(params[:setting])
      flash[:notice] = "Einstellungen wurden gespeichert"
      redirect_to settings_url
    else
      flash[:notice] = "Fehler beim Speichern der Einstellungen"
      redirect_to edit_setting_url(@setting)
    end
  end

  def destroy
    @setting = Setting.find(params[:id])
  end
end
