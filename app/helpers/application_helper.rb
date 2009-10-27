# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def countries
    ["Deutschland", "Österreich", "Schweiz"]
  end

  def current_page_item(page_name)
    puts "+++ " + page_name + " current_menu_item = #{session[:current_menu_item]}"
    session[:current_menu_item] == page_name ? "current_page_item" : ""
  end

end
