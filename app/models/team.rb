class Team < ActiveRecord::Base
  COUNTRY_IMAGES = "/images/countries/"
  
  belongs_to :group
  belongs_to :round
  
  def flag_uri
    COUNTRY_IMAGES + read_attribute(:flag_uri) + ".gif"
  end
end
