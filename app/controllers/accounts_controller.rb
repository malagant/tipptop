class AccountsController < ApplicationController
  before_filter :require_user

  def show
    @account = current_user
  end
end
