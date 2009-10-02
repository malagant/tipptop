class Game < ActiveRecord::Base
  include AASM
  belongs_to :stadium
  belongs_to :group
  belongs_to :round

  belongs_to :team_one, :class_name => "Team", :foreign_key => "team_one"
  belongs_to :team_two, :class_name => "Team", :foreign_key => "team_two"

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
end
