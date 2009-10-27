class GroupsController < ApplicationController
  def index
    @groups = Group.find(:all, :include => :teams)
    self.current_menu_item = 'groups'
  end
end
