require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Gamer do
  before(:each) do
    @valid_attributes = {
      :firstname => "value for firstname",
      :lastname => "value for lastname",
      :street1 => "value for street1",
      :street2 => "value for street2",
      :zipcode => "value for zipcode",
      :city => "value for city",
      :country => "value for country",
      :phone => "value for phone",
      :twitter => "value for twitter"
    }
  end

  it "should create a new instance given valid attributes" do
    Gamer.create!(@valid_attributes)
  end
end
