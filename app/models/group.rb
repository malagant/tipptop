class Group < ActiveRecord::Base
  include AASM
  has_many :teams
  has_many :games

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
     teams.find(:all, :conditions => "place = 1").first
  end
  
  def second_leader
     teams.find(:all, :conditions => "place = 2").first
  end
end
