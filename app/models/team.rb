class Team < ActiveRecord::Base
  COUNTRY_IMAGES = "/images/countries/"
  
  belongs_to :group
  belongs_to :round

  # named_scope :leader, :condition =>
  # named_scope :second_leader, :condition =>  

  def flag_uri
    COUNTRY_IMAGES + read_attribute(:flag_uri) + ".gif"
  end
end
