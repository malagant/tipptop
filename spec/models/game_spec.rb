require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Game do
  before(:each) do
    @valid_attributes = {
      :gametime => Time.now,
      :city => "value for city",
      :stadium => "value for stadium",
      :teamOne => 1,
      :teamTwo => 1,
      :goalsTeamOne => 1,
      :goalsTeamTwo => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Game.create!(@valid_attributes)
  end
end
