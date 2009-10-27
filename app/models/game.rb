class Game < ActiveRecord::Base
  validates_presence_of :gametime

  include AASM
  belongs_to :stadium
  belongs_to :group
  belongs_to :round
  has_many :tipps

  belongs_to :team_one, :class_name => "Team", :foreign_key => "team_one"
  belongs_to :team_two, :class_name => "Team", :foreign_key => "team_two"

  named_scope :finished, :conditions => ["status = ?", "finished"]

  attr_protected :status

  # Ein Game ist solange pending bis es beendet wurde
  # Dann ist ein Game finished
  aasm_column :status
  aasm_initial_state :pending
  aasm_state :pending
  aasm_state :started
  aasm_state :finished

  aasm_event :start do
    transitions :to => :started, :from => :pending
  end

  aasm_event :finish do
    transitions :to => :finished, :from => :started
  end

  def teams
    [team_one, team_two]
  end

  def add_goal_for_team_one
    self.goals_team_one += 1
  end

  def add_goal_for_team_two
    self.goals_team_one += 1
  end

  def remove_goal_for_team_one
    self.goals_team_one -= 1
  end

  def remove_goal_for_team_two
    self.goals_team_one -= 1
  end

  def is_draw?
    self.goals_team_one == self.goals_team_two
  end

  def winner
    return nil if is_draw?
    self.goals_team_one > self.goals_team_two ? self.team_one : self.team_two
  end

  def loser
    return nil if is_draw?
    self.goals_team_one < self.goals_team_two ? self.team_one : self.team_two
  end
end
