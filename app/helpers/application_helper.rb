# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def countries
    ["Deutschland"]
  end

  def current_page_item(page_name)
    puts "+++ " + page_name
    root_url == page_name
  end
end
