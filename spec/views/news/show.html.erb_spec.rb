require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/news/show.html.erb" do
  include NewsHelper
  before(:each) do
    assigns[:news] = @news = stub_model(News,
      :headline => "value for headline",
      :text => "value for text"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ headline/)
    response.should have_text(/value\ for\ text/)
  end
end
