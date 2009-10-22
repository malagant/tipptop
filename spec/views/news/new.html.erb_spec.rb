require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/news/new.html.erb" do
  include NewsHelper

  before(:each) do
    assigns[:news] = stub_model(News,
      :new_record? => true,
      :headline => "value for headline",
      :text => "value for text"
    )
  end

  it "renders new news form" do
    render

    response.should have_tag("form[action=?][method=post]", news_path) do
      with_tag("input#news_headline[name=?]", "news[headline]")
      with_tag("textarea#news_text[name=?]", "news[text]")
    end
  end
end
