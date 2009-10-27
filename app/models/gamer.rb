class Gamer < ActiveRecord::Base
  has_one :user
  belongs_to :user
  has_many :tipps

  validates_presence_of :firstname, :lastname, :street1, :zipcode, :city, :country
  validates_format_of :zipcode, :with => /[0-9]/
  validates_length_of :zipcode, :in => 5..5
end