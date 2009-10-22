require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/news/index.html.erb" do
  include NewsHelper

  before(:each) do
    assigns[:news] = [
      stub_model(News,
        :headline => "value for headline",
        :text => "value for text"
      ),
      stub_model(News,
        :headline => "value for headline",
        :text => "value for text"
      )
    ]
  end

  it "renders a list of news" do
    render
    response.should have_tag("tr>td", "value for headline".to_s, 2)
    response.should have_tag("tr>td", "value for text".to_s, 2)
  end
end
