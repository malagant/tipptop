class Tipp < ActiveRecord::Base
  belongs_to :gamer
  belongs_to :game
  validates_presence_of :goals_one, :goals_two
  validates_numericality_of :goals_one, :goals_two
end
