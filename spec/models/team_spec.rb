require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Team do
  before(:each) do
    @valid_attributes = {
      :country => "value for country",
      :group_id => 1,
      :games => 1,
      :wins => 1,
      :draw => 1,
      :losses => 1,
      :goals_won => 1,
      :goals_lost => 1,
      :points => 1,
      :place => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Team.create!(@valid_attributes)
  end
end
