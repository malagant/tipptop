require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Tipp do
  before(:each) do
    @valid_attributes = {
      :gamer_id => 1,
      :game_id => 1,
      :goals_one => 1,
      :goals => 1,
      :status => "value for status"
    }
  end

  it "should create a new instance given valid attributes" do
    Tipp.create!(@valid_attributes)
  end
end
