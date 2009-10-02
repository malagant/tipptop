require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe TippsController do

  #Delete these examples and add some real ones
  it "should use TippsController" do
    controller.should be_an_instance_of(TippsController)
  end


  describe "GET 'show'" do
    it "should be successful" do
      get 'show'
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it "should be successful" do
      get 'edit'
      response.should be_success
    end
  end

  describe "GET 'create'" do
    it "should be successful" do
      get 'create'
      response.should be_success
    end
  end

  describe "GET 'update'" do
    it "should be successful" do
      get 'update'
      response.should be_success
    end
  end

  describe "GET 'destroy'" do
    it "should be successful" do
      get 'destroy'
      response.should be_success
    end
  end
end
