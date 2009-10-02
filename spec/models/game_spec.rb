require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Game do
  before(:each) do
    @valid_attributes = {
      :gametime => Time.now,
      :stadium => Stadium.new,
      :team_one => Team.new,
      :team_two => Team.new,
      :goals_team_one => 1,
      :goals_team_two => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Game.create!(@valid_attributes)
  end
end
