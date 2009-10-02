class Round < ActiveRecord::Base
  include AASM
  has_many :games
  has_many :teams
  
  belongs_to :team_one, :class_name => "Team", :foreign_key => "team_one"
  belongs_to :team_two, :class_name => "Team", :foreign_key => "team_two"

  attr_protected :status

  # Eine Gruppe ist solange pending bis alle Spiele beendet wurden
  # Dann ist eine Gruppe closed
  aasm_column :status
  aasm_initial_state :pending
  aasm_state :pending
  aasm_state :closed

  aasm_event :close do
    transitions :to => :closed, :from => :pending
  end

  def leader
    first_place
  end

  def second_leader
    second_place
  end

  def first_place
    find_place[0]
  end

  def second_place
    find_place[1]
  end

  def third_place
    find_place[2]
  end

  def fourth_place
    find_place[3]
  end

  def fifth_place
    find_place[4]
  end

  def sixth_place
    find_place[5]
  end

  def seventh_place
    find_place[6]
  end

  def eighth_place
    find_place[7]
  end

  private

  def find_place()
    teams.find(:all, :order => 'place')
  end
end
