require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe RefresherController do

  #Delete these examples and add some real ones
  it "should use RefresherController" do
    controller.should be_an_instance_of(RefresherController)
  end


  describe "GET 'update'" do
    it "should be successful" do
      get 'update'
      response.should be_success
    end
  end
end
