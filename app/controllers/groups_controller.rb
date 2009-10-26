class GroupsController < ApplicationController
  def index
    @groups = Group.find(:all, :include => :teams)
  end
end
