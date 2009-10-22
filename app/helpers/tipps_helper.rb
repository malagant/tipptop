module TippsHelper
  # Shows a link for a new tipp or a link to the given tipp
  def tipp_helper(game)
    tipp = Tipp.find_by_game_id_and_gamer_id(game, current_user.gamer) if logged_in? && current_user.gamer
    unless logged_in?
      content = link_to image_tag("/images/login.jpg", :title => "Anmelden"), login_url
    end
    if logged_in? && !current_user.gamer
      content = link_to image_tag("/images/signup", :title => "Spielerdetails anlegen"), new_user_gamer_url(current_user)
    end
    if logged_in? && current_user.gamer && !tipp
      content = link_to image_tag("/images/tipp.jpg", :title => "Tipp abgeben"), new_game_tipp_url(game)
    elsif logged_in? && current_user.gamer && tipp
      content = link_to image_tag("/images/edit.jpg", :title => "Tipp &auml;ndern"), edit_game_tipp_url(game, tipp)
      content += " " + link_to(image_tag("/images/delete.jpg", :title => "l&ouml;schen"), game_tipp_url(game, tipp), :method => :delete)
    end
    content
  end
end
