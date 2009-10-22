require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/news/edit.html.erb" do
  include NewsHelper

  before(:each) do
    assigns[:news] = @news = stub_model(News,
      :new_record? => false,
      :headline => "value for headline",
      :text => "value for text"
    )
  end

  it "renders the edit news form" do
    render

    response.should have_tag("form[action=#{news_path(@news)}][method=post]") do
      with_tag('input#news_headline[name=?]', "news[headline]")
      with_tag('textarea#news_text[name=?]', "news[text]")
    end
  end
end
