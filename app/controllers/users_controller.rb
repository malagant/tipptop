class UsersController < ApplicationController
  before_filter :require_no_user, :except => :retire

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = 'Vielen Dank f�r Ihre Regisitrierung. Wir haben Ihnen einen Aktivierungsemail geschickt.'
      redirect_back_or_default root_url
    else
      render :new
    end
  end

  def confirm
    @user = User.pending.find_using_perishable_token(params[:confirmation_code])
    unless @user
      flash[:error] = 'Entschuldigung, aber der Aktivierungscode ist nicht korrekt.'
    else
      @user.confirm!
      @user.reset_perishable_token!
      flash[:notice] = 'Gratulation, Sie haben diesen Account erfolgreich aktiviert.'
    end
    redirect_back_or_default login_url
  end

  def retire
    current_user.retire!
    redirect_to root_url
  end
end
