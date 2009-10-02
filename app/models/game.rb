class Game < ActiveRecord::Base
  belongs_to :stadium
  belongs_to :group

  belongs_to :team_one, :class_name => "Team", :foreign_key => "team_one"
  belongs_to :team_two, :class_name => "Team", :foreign_key => "team_two"
end
