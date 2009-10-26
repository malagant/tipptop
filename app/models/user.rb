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
  aasm_state :retired

  validates_uniqueness_of :nickname

  aasm_event :confirm do
    transitions :to => :confirmed, :from => [:pending, :retired]
  end

  aasm_event :retire do
    transitions :to => :retired, :from => :confirmed
  end
end
