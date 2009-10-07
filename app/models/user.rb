class User < ActiveRecord::Base
  include AASM
  has_role
  
  has_one :gamer
  acts_as_authentic

  attr_protected :status

  aasm_column :status
  aasm_initial_state :pending
  aasm_state :pending
  aasm_state :confirmed
  
  aasm_event :confirm do
    transitions :to => :confirmed, :from => :pending
  end
end
