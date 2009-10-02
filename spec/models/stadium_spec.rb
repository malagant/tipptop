require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Stadium do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :city => "value for city"
    }
  end

  it "should create a new instance given valid attributes" do
    Stadium.create!(@valid_attributes)
  end
end
