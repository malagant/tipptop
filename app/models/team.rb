class Team < ActiveRecord::Base
  include AASM

  COUNTRY_IMAGES = "/images/countries/"
  
  belongs_to :group
  belongs_to :round

  named_scope :still_in, :conditions => "status = 'in'"
  named_scope :already_out, :conditions => "status = 'out'"

  aasm_column :status

  aasm_initial_state :in
  aasm_state :int
  aasm_state :out

  aasm_event :opt_out do
    transitions :to => :out, :from => :in
  end

  def flag_uri
    COUNTRY_IMAGES + read_attribute(:flag_uri) + ".gif"
  end

  def flag_uri=(uri)
    write_attribute(:flag_uri, uri.split(/.gif|.jpg|.png/).first)
  end

  def self.countries
    %w(SŸd\ Afrika Deutschland Holland England)
  end
end
