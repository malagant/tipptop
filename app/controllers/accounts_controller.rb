class AccountsController < ApplicationController
  before_filter :require_user

  def index
    @accounts = User.find(:all, :include => :gamer)
  end

  def show
    @account = current_user
    self.current_menu_item = "account"
  end

  def edit
    @account = current_user
  end
end
