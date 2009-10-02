class Tipp < ActiveRecord::Base
  belongs_to :gamer
  belongs_to :game
end
